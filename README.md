---
output: github_document
---

```{r, echo = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  fig.path = "images/"
)
```

GOTMr
====


R package for basic [GOTM](http://gotm.net/) model running. `GOTMr` holds version 5.3 of the [lake branch](http://github.com/gotm-model/code/tree/lake) of the General Ocean Turbulence Model (GOTM) for windows 64bit platforms. This package does not contain the source code for the model, only the executable. Also, use `gotm_version()` to figure out what version of GOTM you are running. This package was inspired by [GOTMr](https://github.com/GLEON/GOTMr).

## Installation

You can install GOTMr from Github with:

```{r gh-installation, eval = FALSE}
# install.packages("devtools")
devtools::install_github("tadhg-moore/GOTMr")
```

## Usage

### Run

```{r example, eval=FALSE}
library(GOTMr)
sim_folder <- system.file('extdata', package = 'GOTMr')
run_gotm(sim_folder)
```

```{r echo=FALSE, results='hide'}
library(GOTMr)
example("run_gotm")
```

```{ }
 ------------------------------------------------------------------------
 GOTM started on 2019/04/06 at 20:42:49
 ------------------------------------------------------------------------
    init_gotm
 ------------------------------------------------------------------------
        reading model setup namelists..
        done.
        GOTM Simulation
        Using          100  layers to resolve a depth of   44.0000000000000     
        The station Example is situated at (lat,long)    53.0000000000000     
  -9.00000000000000     
        Example
        initializing modules....
    init_input
    done
    init_time
        Time step:         3600.00000000000       seconds
        Time format:               2
        Start:          2010-01-01 00:00:00
        Stop:           2010-12-01 00:00:00
         ==>          334  day(s) and                      0  seconds ==> 
                  8016  micro time steps
    init_eqstate
    init_meanflow
        reading meanflow namelists..
        done.
        allocation meanflow memory..
        done.
    init_hypsograph
        reading hypsograph from:
            hypsograph.dat
            # of lines          48 read order           2
        adjusting depth from namelist to confirm with hypsograph
            depth:   44.0000000000000      --->   46.8000000000000     
    init_tridiagonal
        sigma coordinates (zooming possible)
    init_observations
        initial salinity:
            none
        initial temperature:
        Reading temperature profiles from:
            init_tprof.dat
        external pressure
            none
        internal pressure
            none
        extinction method
            7
        vertical advection
            none
        elevation
            constant
        waves
            none
        velocity profiles
            none
        dissipations profiles
            none
    init_streams
        .... inflow           1  0.0000000E+00  -1.000000    
            Only one set of profiles is present in init_tprof.dat.
    init_turbulence
        reading turbulence namelists..
        done.
        allocation memory..
        allocation memory..
        allocation memory..
        done.
         
        --------------------------------------------------------
        You are using the k-epsilon model
        with the following properties:
         
            ce1                                  =   1.44000000000000     
            ce2                                  =   1.92000000000000     
            ce3minus                             = -0.744378943205702     
            ce3plus                              =   1.00000000000000     
            sig_k                                =   1.00000000000000     
            sig_e                                =   1.20000006940017     
         
            Value of the stability function
            in the log-law,                   cm0 =  0.527046261454271     
            in shear-free turbulence,        cmsf =  0.730911229264925     
         
            von Karman constant,           kappa =  0.400000000000000     
            homogeneous decay rate,            d =  -1.08695652173913     
            spatial decay rate (no shear), alpha =  -7.95123897814375     
            length-scale slope (no shear),     L =  4.595791868626506E-002
            steady-state Richardson-number, Ri_st=  0.250000000000000     
        --------------------------------------------------------
         
    init_air_sea
        Reading short wave radiation data from:
            swr_input_file.dat
        Air-sea exchanges will be calculated
        Reading meteo data from:
            met_file.dat
            heat- and momentum-fluxes:
                using Fairall et. all formulation
            long-wave back radiation:
                using Clark formulation
        Reading precipitation data from:
            precip_input_file.dat
        rain_impact=       T
        calc_evaporation=  T
    register_all_variables()
        register_coordinate_variables()
        register_meanflow_variables()
        register_airsea_variables()
        register_observation_variables()
        register_stream_variables()
        register_turbulence_variables()
        register_diagnostic_variables()
    init_gotm_fabm
    init_gotm_fabm_input
        done.
 ------------------------------------------------------------------------
    saving initial conditions
        Processing output category /state:
          - temp
          - salt
          - u
          - uo
          - v
          - vo
          - xP
          - h
          - ho
          - tke
          - tkeo
          - eps
          - num
          - nuh
          - nus
        Processing output category /:
          - lon
          - lat
          - temp
          - salt
          - rho
          - temp_obs
          - salt_obs
          - u
          - v
          - xP
          - h
          - tke
          - eps
          - num
          - nuh
          - nus
          - u_obs
          - v_obs
          - fric
          - drag
          - SS
          - P
          - uu
          - vv
          - ww
          - NN
          - NNT
          - NNS
          - buoy
          - kb
          - epsb
          - G
          - Pb
          - avh
          - L
          - gamu
          - gamv
          - gamb
          - gamh
          - gams
          - cmue1
          - cmue2
          - gam
          - an
          - as
          - at
          - r
          - Rig
          - xRf
          - taux
          - tauy
          - u_taus
          - u10
          - v10
          - airt
          - airp
          - hum
          - es
          - ea
          - qs
          - qa
          - rhoa
          - cloud
          - albedo
          - precip
          - evap
          - int_precip
          - int_evap
          - int_swr
          - int_heat
          - int_total
          - I_0
          - qe
          - qh
          - qb
          - heat
          - tx
          - ty
          - sst
          - sst_obs
          - sss
          - zeta
          - mld_surf
          - rad
          - bioshade
          - ga
          - Af
          - z
          - zi
          - int_water_balance
          - Qlayer
          - Qs
          - Qt
          - wq
          - FQ
          - Qres
          - Q_inflow
          - T_inflow
          - int_inflow
          - int_outflow
          - mld_bott
          - Ekin
          - Epot
          - Eturb
 ------------------------------------------------------------------------
    time_loop
           0 %
          10 %
          20 %
          30 %
          40 %
          50 %
          60 %
          70 %
          80 %
          90 %
         100 %
 ------------------------------------------------------------------------
    clean_up
    clean_hypsograph
        de-allocation hypsograph memory ...
        done
    clean_meanflow
        de-allocation meanflow memory ...
        done.
    clean_turbulence
        de-allocating turbulence memory ...
        done.
    clean_observations
        de-allocate observation memory ...
        done.
    clean_tridiagonal
 ------------------------------------------------------------------------
 GOTM finished on 2019/04/06 at 20:42:51
 ------------------------------------------------------------------------
 CPU time:                       1.638011      seconds
 Simulated time/CPU time:        17617469.4650638     
 ------------------------------------------------------------------------
 GOTM version:   v5.3-400-g90cc2710 (lake branch)
 FABM version:   v0.95.3-137-gf803260 (master branch)
 NetCDF version: 3.6.1-beta1 of Mar  7 2018 17:17:53 $
 ------------------------------------------------------------------------
 Compiler: Intel 19.0.0.20181018
```

### Visualize

You can download [PyNcView](http://sourceforge.net/projects/pyncview/) for viewing the netCDF output or you can download a set of accompanying tools for working with GOTM data in R [gotmtools](https://github.com/tadhg-moore/gotmtools).

```{r eval=FALSE}
library(gotmtools)
out_file <- file.path(sim_folder, 'output.nc')
plot_wtemp(file = out_file)
```

```{r echo=FALSE}
library(gotmtools)
out_file <- file.path(sim_folder, 'output.nc')
plot_wtemp(file = out_file)
```
