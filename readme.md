# [MATLAB] Comparison of conventional and intelligent PID controllers in time-delaying environments with load disturbance 

## Introduction
In this project, I compare PID controllers tunned by Z_N method verse Fuzzy PID  and multiobj Genetic algorithm PID in 3 mode: 
- Easy mode: Constant input, no load, no delay. 
- Medium mode: Constant input, load 5s and 20s, delay 1s before 15s and delay 2s afterward
- Hard mode: staircase input, load 5s and 20s, delay 1s before 15s and delay 2s afterward

## What my result show
- Multi-objective Genetic Algorithm optimization for PID seems to be efficient and adaptive for both easy and hard cases.
- While the Ziegler-Nichols tuning method shows better results for easy cases, the Fuzzy_PID approach proves to be superior in hard cases.

## How I build my model: 
* Fuzzy logic: 
    
    I used 3 different fuzzy logic for delta Kp, delta Ki, delta Kd which are fuzzy_delta_Kp.fis, fuzzy_delta_Ki.fis, fuzzy_delta_Kd.fis files in my repository. Each fuzzy logic has 2 input, 1 output and 49 rules based on this [research](https://doi.org/10.1109/PEDES.2012.6484325)
* Multi objective Genetic Algorithm: 
  
  - I use y = ITSE+2*IAE as my 2 fitness functions 

  - Options for multi objective: 

    - MaxGenerations : 200 
    - MaxStallGenerations : 100
    - PopulationSize: 50
    - CrossoverFcn: crossoverheuristic ,crossoversinglepoint, crossovertwopoint
    - CreationFcn: creationuniform
    - MutationFcn: mutationuniform: 
    - SelectionFcn: selectiontournament

## Easy mode: Constant input, no load, no delay.
<p align="center">
  <img src="resources/easy_PID.png" width=600><br/>
  <i>Easy_mode PID tunned by Z_N</i>
</p>

<p align="center">
  <img src="resources/easy_fuzzy_PID.png" width=600><br/>
  <i>Easy_mode_fuzzy PID tunned by Z_N</i>
</p>

<p align="center">
  <img src="resources/Easy_multi_GA_PID.png" width=600><br/>
  <i>Easy mode multi objective GA PID</i>

     *1s delay are required for handle "singulaity error" in Matlab while compute cost function 
</p>

### Result

<p align="center">
  <img src="resources/easy_response.png" width=600><br/>
  <i>Response</i>
</p>


<p align="center">
  <img src="resources/easy_quantitative.png" width=600><br/>
  <i>Quantitative Result</i>
</p>

<p align="center">
  <img src="resources/easy_ITSE.png" width=600><br/>
  <i>Comparison of ITSE</i>
</p>

<p align="center">
  <img src="resources/easy_IAE.png" width=600><br/>
  <i>Comparison of IAE</i>
</p>

## Medium mode: Constant input, load disturbance at 5s and 20s, delay 1s before 15s and delay 2s afterward.

<p align="center">
  <img src="resources/medium.png" width=600><br/>
  <i>medium mode PID with load and delay</i>
</p>

<p align="center">
  <img src="resources/medium_fuzzy.png" width=600><br/>
  <i> medium mode fuzzy PID with load and delay</i>
</p>

<p align="center">
  <img src="resources/Medium_Multi_obj.png" width=600><br/>
  <i> medium mode multi objective GA PID with load and delay</i>
</p>

### Result

<p align="center">
  <img src="resources/Medium_response.png" width=600><br/>
  <i> Response </i>
</p>

<p align="center">
  <img src="resources/Medium_Quantitative.png" width=600><br/>
  <i> Quantitative Result</i>
</p>


<p align="center">
  <img src="resources/Medium_ITSE.png" width=600><br/>
  <i> Comparision of ITSE </i>
</p>

<p align="center">
  <img src="resources/Medium_IAE.png" width=600><br/>
  <i> Comparision of IAE </i>
</p>

## Easy mode: Staircase input, load disturbance at 5s and 20s, delay 1s before 15s and delay 2s afterward. 

<p align="center">
  <img src="resources/Hard_PID.png" width=600><br/>
  <i> Hard mode PID with load and delay </i>
</p>


<p align="center">
  <img src="resources/Hard_PID_fuzzy.png" width=600><br/>
  <i> Hard mode fuzzy PID with load and delay </i>
</p>

<p align="center">
  <img src="resources/Hard_Multi_obj_GA.png" width=600><br/>
  <i> Hard mode multi objective GA PID with load and delay </i>
</p>

### Result

<p align="center">
  <img src="resources/Hard_response.png" width=600><br/>
  <i> Response </i>
</p>

<p align="center">
  <img src="resources/Hard_Quantitative.png" width=600><br/>
  <i> Quantiative Result </i>
</p>

<p align="center">
  <img src="resources/Hard_ITSE.png" width=600><br/>
  <i> Comparision of ITSE </i>
</p>

<p align="center">
  <img src="resources/Hard_IAE.png" width=600><br/>
  <i> Comparison of IAE </i>
</p>




