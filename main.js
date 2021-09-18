function showError(errDesc)
{
    var msgPanel = document.getElementById("msgPanel");
    var msgText = document.getElementById("errMsg");

    // Show error panel and display specified message on the page.
    msgPanel.style.display = "";
    msgText.innerHTML = '<i class="exclamation circle icon"></i> ' +  errDesc;
}

function hideError()
{
    var msgPanel = document.getElementById("msgPanel");
    msgPanel.style.display = "none";
}

function updateSVGElement(svgObj, id, val)
{
    compId = svgObj.getElementById(id);
    if((compId) && (compId.childNodes.length > 0))
    {
        compId.childNodes[0].innerHTML = val;
    }
}

function updateSchematic(strR1, strR4, strR5, strR6, strC1, strC2, strC3, strC4)
{
    // Get SVG schematic data from the document.
    schematicObj = document.getElementById("schematic");
    if(schematicObj)
    {
        svgSchematic = schematicObj.getSVGDocument();
        if(svgSchematic)
        {
            // Get component nodes from the SVG object and update values.
            updateSVGElement(svgSchematic, "R1Val", strR1);
            updateSVGElement(svgSchematic, "R2Val", strR1);
            updateSVGElement(svgSchematic, "R3Val", strR1);

            updateSVGElement(svgSchematic, "R4Val", strR4);
            updateSVGElement(svgSchematic, "R5Val", strR5);
            updateSVGElement(svgSchematic, "R6Val", strR6);

            updateSVGElement(svgSchematic, "C1Val", strC1);
            updateSVGElement(svgSchematic, "C2Val", strC2);
            updateSVGElement(svgSchematic, "C3Val", strC3);

            updateSVGElement(svgSchematic, "C4Val", strC4);
            updateSVGElement(svgSchematic, "C5Val", strC4);
            updateSVGElement(svgSchematic, "C6Val", strC4);
        }
        else
        {
            console.warn("Unable to load SVG object from the schematic object");
        }
    }
    else
    {
        console.warn("Unable to find the schematic object");
    }
}

function executeCalc()
{
    var lpfResistor = document.getElementsByName("txtLPFResistor")[0].value;
    var lpfFreq = document.getElementsByName("txtLPFFreq")[0].value;

    var hpfCapacitor= document.getElementsByName("txtHPFCapacitor")[0].value;
    var hpfFreq = document.getElementsByName("txtHPFFreq")[0].value;

    // Hide error message panel from the page.
    hideError();

    // Validate LPF input parameters.
    if(lpfResistor.trim() == "")
    {
        showError("Low pass filter resistor value is not specified!");
        return;        
    }

    if(lpfFreq.trim() == "")
    {
        showError("Low pass filter frequency is not specified!");
        return;
    }

    // Validate HPF input parameters.
    if(hpfCapacitor.trim() == "")
    {
        showError("High pass filter capacitor value is not specified!");
        return;
    }
    
    if(hpfFreq.trim() == "")
    {
        showError("High pass filter frequency is not specified!");
        return;
    }
    
    var lpfR = parseFloat(lpfResistor);
    var hpfC = parseFloat(hpfCapacitor);

    var lpfF = parseFloat(lpfFreq);
    var hpfF = parseFloat(hpfFreq);

    // Perform range check on LPF resistor value.
    if(isNaN(lpfR) || (lpfR <= 0))
    {
        showError("Invalid low pass filter resistor value!");
        return;
    }

    // Perform range check on HPF resistor value.
    if(isNaN(hpfC) || (hpfC <= 0))
    {
        showError("Invalid high pass filter capacitor value!");
        return;
    }

    // Perform range check on LPF frequency value.
    if(isNaN(lpfF) || (lpfF <= 0))
    {
        showError("Invalid low pass filter frequency value!");
        return;
    }
    
    // Perform range check on HPF frequency value.
    if(isNaN(hpfF) || (hpfF <= 0))
    {
        showError("Invalid high pass filter frequency value!");
        return;
    }  
    
    var flpfR = (2 * Math.PI) * lpfF * (lpfR * 1000);
    var fhpfC = 1 / ((2 * Math.PI) * hpfF * (hpfC * 0.00000001));

    // Calculate C1, C2 and C3 of the LPF based on precalculated 3 poles of the 3rd order polynomial values (3.546, 1.392 and 0.2024).
    var c1 = (1.392 / flpfR) * 1000000;
    var c2 = (3.546 / flpfR) * 1000000;    
    var c3 = (0.2024 / flpfR) * 1000000;

    // Calculate R4, R5 and R6 of the HPF based on precalculated 3 poles of the 3rd order polynomial values (3.546, 1.392 and 0.2024).
    var r4 = (fhpfC / 1.392) / 100000;
    var r5 = (fhpfC / 3.546) / 100000;    
    var r6 = (fhpfC / 0.2024) / 100000;

    var strC1 = c1.toPrecision(3) + "&#181;F";
    var strC2 = c2.toPrecision(3) + "&#181;F";
    var strC3 = c3.toPrecision(3) + "&#181;F";
    var strC4 = hpfC.toPrecision(3) + "&#181;F";

    var strR1 = lpfR.toPrecision(3) + "K&#8486;";
    var strR4 = r4.toPrecision(3) + "K&#8486;";
    var strR5 = r5.toPrecision(3) + "K&#8486;";
    var strR6 = r6.toPrecision(3) + "K&#8486;";

    // Display calculated LPF component values.
    document.getElementById("lpfC1").innerHTML = strC1;
    document.getElementById("lpfC2").innerHTML = strC2;
    document.getElementById("lpfC3").innerHTML = strC3;
    document.getElementById("lpfC4").innerHTML = strC4;

    // Display calculated HPF component values.
    document.getElementById("hpfR1").innerHTML = strR1;
    document.getElementById("hpfR4").innerHTML = strR4;
    document.getElementById("hpfR5").innerHTML = strR5;
    document.getElementById("hpfR6").innerHTML = strR6;

    // Update schematic with calculated values.
    updateSchematic(strR1, strR4, strR5, strR6, strC1, strC2, strC3, strC4);
}