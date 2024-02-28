
# photobiologyFilters <img src="man/figures/logo.png" align="right" width="120"/>

[![CRAN
version](https://www.r-pkg.org/badges/version-last-release/photobiologyFilters)](https://cran.r-project.org/package=photobiologyFilters)
[![cran
checks](https://badges.cranchecks.info/worst/photobiologyFilters.svg)](https://cran.r-project.org/web/checks/check_results_photobiologyFilters.html)
[![R Universe
vwersion](https://aphalo.r-universe.dev/badges/photobiologyFilters)](https://aphalo.r-universe.dev/photobiologyFilters)
[![R build
status](https://github.com/aphalo/photobiologyfilters/workflows/R-CMD-check/badge.svg)](https://github.com/aphalo/photobiologyfilters/actions)

Package **photobiologyFilters** is a collection of spectral
transmittance data for more than 500 transparent and partially
transparent materials measured in our lab, by collaborators and
contributors including data have made available by the suppliers for
inclusion in this package. The package also contains spectral
reflectance data and spectral refraction index data for some materials
and spectral reflectance data for some man-made and natural land
surfaces.

## Code breaking renaming of data objects

In the update to version 0.5.0 several members of the collection of
filter spectra were renamed to ensure consistency and clarity. As of
version 0.5.0 all member names start with the name of the manufacturer
or supplier. In addition, several of the vectors of names of member
spectra were renamed to include the word “filters” to avoid possible
name clashes with other packages and also to improve naming consistency.
In version 0.5.3 the names of spectra for photography filters were
revised again as data for several copies of the same filter types are
now included in some cases.

## Examples

``` r
library(photobiologyFilters)
```

How many spectra are included in the current version of
‘photobiologyFilters’?

More than 300 spectra for optical glass and plastic sheets and films.
This collection includes filters used for photography, the whole set of
Schott glass filters, most of MIDOPT filters, various types of glass,
acrylic, polycarbonate and other panes, and theatrical “gels” and some
greenhouse cladding films. Most of these materials do not scatter light
and all of them are homogeneous.

``` r
length(filters.mspct)
#> [1] 381
```

Nearly 200 spectra for different climate screens used in horticulture
and agriculture. All these materials scatter light and have a
heterogeneous surface, as they are nets, yarns or composites in which
part of the surface has different transmittance than the matrix: either
an opaque yarn with holes or a partly clear matrix with embedded opaque
or partly opaque elements.

``` r
length(screens_nets.mspct)
#> [1] 197
```

Reflectance spectra for a few metals are included.

``` r
length(metals.mspct)
#> [1] 12
```

Reflectance spectra for different surfaces, such as bare ground, asphalt
and different types of vegetation.

``` r
length(materials.mspct)
#> [1] 14
```

The refractive index can be used to derive other optical properties,
such as reflectance at different angles of incidence. For some materials
the refractive index varies strongly with wavelength while for other
materials varies weakly. This is a small set, serving as example.

``` r
length(refractive_index.mspct)
#> [1] 17
```

What are the names of available spectra? We use `head()` to limit the
output.

``` r
# list names of the first 10 filters
head(names(filters.mspct), 10)
#>  [1] "Agilent_blank_0mm_0mm"            "Agilent_dark_0mm_0mm"            
#>  [3] "Baader_U_filter_1.0mm_48mm"       "BPI_Luminance"                   
#>  [5] "BPI_Solatrol"                     "BW_007_Clear_MRC_nano_1.2mm_46mm"
#>  [7] "Courtaulds_CA_115um"              "Courtaulds_CA_115um_age000"      
#>  [9] "Courtaulds_CA_115um_age020"       "Courtaulds_CA_115um_age030"
```

To subset based on different criteria we can use predefined character
vectors of filter or climate-screen names. For example, vector
`polyester` lists the names of the spectra for filters made of polyester
(PET).

``` r
polyester_filters
#> [1] "Foiltek_Clear_PET_G"             "McDermit_PET_Autostat_CT5_125um"
```

We can use the vector to extract all these spectra as a collection.

``` r
filters.mspct[polyester_filters]
#> Object: filter_mspct [2 x 1]
#> --- Member: Foiltek_Clear_PET_G ---
#> Object: filter_spct [339 x 2]
#> Wavelength range 190-1100 nm, step 1-4 nm 
#> Label: Polyethylene terephthalate (PET), 'polyester'; clear sheet; new 
#> Transmittance of type 'total'
#> Rfr (/1): 0.097, thickness (mm): 3.00, attenuation mode: absorption.
#> 
#> # A tibble: 339 × 2
#>    w.length      Tfr
#>       <dbl>    <dbl>
#>  1      190 0.000105
#>  2      194 0.000102
#>  3      198 0.000100
#>  4      201 0.000100
#>  5      202 0.000100
#>  6      206 0.000100
#>  7      209 0.000100
#>  8      210 0.000100
#>  9      214 0.000102
#> 10      215 0.000102
#> # ℹ 329 more rows
#> --- Member: McDermit_PET_Autostat_CT5_125um ---
#> Object: filter_spct [454 x 2]
#> Wavelength range 240-800 nm, step 1-4 nm 
#> Label: Polyester, clear film, 0.000125 m thick, Autostat CT5 from McDermit Autotype; new 
#> Transmittance of type 'total'
#> Rfr (/1): 0.074, thickness (mm): 0.125, attenuation mode: absorption.
#> 
#> # A tibble: 454 × 2
#>    w.length     Tfr
#>       <int>   <dbl>
#>  1      240 0.00482
#>  2      241 0.00464
#>  3      242 0.00446
#>  4      244 0.00414
#>  5      246 0.004  
#>  6      248 0.004  
#>  7      252 0.00386
#>  8      256 0.00329
#>  9      258 0.003  
#> 10      259 0.003  
#> # ℹ 444 more rows
#> 
#> --- END ---
```

The package includes two character vectors with the names of the vectors
of names that are available for filters and screens.

``` r
all_filter_selectors
#>  [1] "acetate_filters"            "acrylic_filters"           
#>  [3] "baader_filters"             "band_pass_filters"         
#>  [5] "blue_filters"               "blue_green_filters"        
#>  [7] "bpi_visqueen_filters"       "bw_filters"                
#>  [9] "clear_filters"              "courtaulds_filters"        
#> [11] "etola_filters"              "evonik_filters"            
#> [13] "fake_unbranded_filters"     "firecrest_filters"         
#> [15] "foiltek_filters"            "fotga_filters"             
#> [17] "glass_windows"              "green_filters"             
#> [19] "haida_filters"              "heat_filters"              
#> [21] "heliopan_filters"           "hoya_filters"              
#> [23] "kenfaith_filters"           "kenko_filters"             
#> [25] "knightx_filters"            "kolarivision_filters"      
#> [27] "lee_filters"                "lee_gels"                  
#> [29] "long_pass_filters"          "mcdermit_filters"          
#> [31] "midopt_filters"             "neutral_filters"           
#> [33] "nisi_filters"               "old_schott_filters"        
#> [35] "optical_glass_filters"      "orange_filters"            
#> [37] "photography_filters"        "plastic_dome_filters"      
#> [39] "plastic_film_filters"       "plastic_sheet_filters"     
#> [41] "plexiglas_filters"          "polycarbonate_filters"     
#> [43] "polyester_filters"          "polystyrene_filters"       
#> [45] "polyvynil_chloride_filters" "purshee_filters"           
#> [47] "red_nir_filters"            "rocolax_filters"           
#> [49] "rosco_filters"              "rosco_gels"                
#> [51] "schott_filters"             "short_pass_filters"        
#> [53] "stacked_filters"            "tangsinuo_filters"         
#> [55] "theatrical_gels"            "tiffen_filters"            
#> [57] "uqg_filters"                "uv_filters"                
#> [59] "uvir_cut_filters"           "uvroptics_filters"         
#> [61] "xl_horticulture_filters"    "yellow_filters"            
#> [63] "zeiss_filters"              "zomei_filters"
```

``` r
all_screen_selectors
#> [1] "arrigoni_screens"          "criadolopez_screens"      
#> [3] "howitec_screens"           "huachangyarns_screens"    
#> [5] "mallastextiles_nets"       "oerlemansplastics_screens"
#> [7] "svensson_screens"
```

Please, see the *User Guide* or help pages for the names of other
vectors of names for materials, suppliers, and regions of the spectrum.

Summary calculations can be easily done with methods from package
‘photobiology’. Here we calculate mean transmittance for two regions of
the spectrum given by wavelengths in nanometres.

``` r
transmittance(filters.mspct[["Foiltek_Clear_PET_G"]], 
              list(waveband(c(250, 315)), waveband(c(500,600))))
#> Tfr(wl)_range.250.315 Tfr(wl)_range.500.600 
#>          0.0001886533          0.8759401279 
#> attr(,"Tfr.type")
#> [1] "total"
#> attr(,"radiation.unit")
#> [1] "transmittance average"
```

The `autoplot()` methods from package ‘ggspectra’ can be used for
plotting one or more spectra at a time. The classes of the objects used
to store the spectral data are derived from `"data.frame"` making direct
use of the data easy with functions and methods from base R and various
packages.

## Installation

Installation of the most recent stable version from CRAN:

``` r
install.packages("photobiologyFilters")
```

Installation of the current unstable version from R-Universe CRAN-like
repository:

``` r
install.packages('photobiologyFilters', 
                 repos = c('https://aphalo.r-universe.dev', 'https://cloud.r-project.org'))
```

Installation of the current unstable version from GitHub (no binaries
available):

``` r
# install.packages("remotes")
remotes::install_github("aphalo/photobiologyfilters")
```

## Documentation

HTML documentation is available at
(<https://docs.r4photobiology.info/photobiologyFilters/>), including a
*User Guide*.

News on updates to the different packages of the ‘r4photobiology’ suite
are regularly posted at (<https://www.r4photobiology.info/>).

Two articles introduce the basic ideas behind the design of the suite
and its use: Aphalo P. J. (2015)
(<https://doi.org/10.19232/uv4pb.2015.1.14>) and Aphalo P. J. (2016)
(<https://doi.org/10.19232/uv4pb.2016.1.15>).

A book is under preparation, and the draft is currently available at
(<https://leanpub.com/r4photobiology/>).

A handbook written before the suite was developed contains useful
information on the quantification and manipulation of ultraviolet and
visible radiation: Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A.
R., Robson, T. M., & Rosenqvist, E. (Eds.) (2012) Beyond the Visible: A
handbook of best practice in plant UV photobiology (1st ed., p. xxx +
174). Helsinki: University of Helsinki, Department of Biosciences,
Division of Plant Biology. ISBN 978-952-10-8363-1 (PDF),
978-952-10-8362-4 (paperback). PDF file available from
(<https://hdl.handle.net/10138/37558>).

## Contributing

Pull requests, bug reports, and feature requests are welcome at
(<https://github.com/aphalo/photobiologyfilters>).

## Citation

If you use this package to produce scientific or commercial
publications, please cite it according to the recommended citation
below. For individual spectra please read the corresponding help page
and if available, also cite the original source of the data. Be aware
that most data have been re-processed before inclussion in the package.

``` r
citation("photobiologyFilters")
#> To cite package 'photobiologyFilters' in publications, please use:
#> 
#>   Aphalo, Pedro J. (2015) The r4photobiology suite. UV4Plants Bulletin,
#>   2015:1, 21-29. DOI:10.19232/uv4pb.2015.1.14
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Article{,
#>     author = {Pedro J. Aphalo},
#>     title = {The r4photobiology suite},
#>     journal = {UV4Plants Bulletin},
#>     volume = {2015},
#>     number = {1},
#>     pages = {21-29},
#>     year = {2015},
#>     doi = {10.19232/uv4pb.2015.1.14},
#>   }
```

## License

© 2012-2024 Pedro J. Aphalo (<pedro.aphalo@helsinki.fi>). Released under
the GPL, version 2 or greater. This software carries no warranty of any
kind.
