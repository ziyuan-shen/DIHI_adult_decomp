**Note:** This project is **not** 100% open source. Only part of coding developed by owner of this github account is made public. To view the original GitLab repo ([http://pacegitlab.dhe.duke.edu/dihi/2019_rfa/adult_decompensation.git](http://pacegitlab.dhe.duke.edu/dihi/2019_rfa/adult_decompensation.git)), please apply access to Duke PACE machine [https://pace.ori.duke.edu/](https://pace.ori.duke.edu/).

# Adult Decompensation (In progress!)

> This project aims to initialize machine learning models for predicting adult inpatients' decompensation (ICU admission, mortality, RRT events, etc) in real time. Most preliminary work before building models includes data cleaning, data visualization, data quality assurance and data manipulation etc. The ultimate goal is to reduce patients' deterioration and standardize hospital response protocols.

## Table of contents

* [Architecture](#architecture)
* [Getting Started](#getting-started)
* [Data](#data)
* [Modeling](#modeling)
* [Visualizations](#visualizations)
* [Status](#status)
* [Docs](#docs)
* [License](#license)
* [Contact](#contact)
* [Acknowledgement](#acknowledgement)

## Architecture

Directory tree along with functionality of each folder(or file) is summarized as follows (click the arrow to expand folders):

<details><summary>Code</summary><blockquote>
<details><summary>DataPrep</summary>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cohort&nbsp;&nbsp;&nbsp;&nbsp;//codes for cohort generation<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;features&nbsp;&nbsp;&nbsp;&nbsp;//codes for pulling and cleaning data elements<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outcome&nbsp;&nbsp;&nbsp;&nbsp;//codes for querying and labelling outcomes<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pull_data&nbsp;&nbsp;&nbsp;&nbsp;//pull useful data from raw db file<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;adt_transfer.py&nbsp;&nbsp;&nbsp;&nbsp;//create transfer table and output a csv file<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;adt_transfer.sql&nbsp;&nbsp;&nbsp;&nbsp;//transfer table sql query
</details>
&nbsp;&nbsp;&nbsp;&nbsp;db&nbsp;&nbsp;&nbsp;&nbsp;//codes for creating project database and importing data into the database
<details><summary>Model</summary><blockquote>
<details><summary>v1.0&nbsp;&nbsp;&nbsp;&nbsp;//version 1.0 (24-hour prediction window)</summary>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;design_matrix<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;News&nbsp;&nbsp;&nbsp;&nbsp;//python package for implementing News(National Early Warning Score)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;visualization&nbsp;&nbsp;&nbsp;&nbsp;//model visualization<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;model_utils.py&nbsp;&nbsp;&nbsp;&nbsp;//model utils python package<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;run_ann.ipynb<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;run_logistic_regression.py<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;run_news.py<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;run_random_forest.ipynb<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;run_xgboost.py
</details></blockquote>
</details>
&nbsp;&nbsp;&nbsp;&nbsp;ockham&nbsp;&nbsp;&nbsp;&nbsp;//unit conversion package</br>
&nbsp;&nbsp;&nbsp;&nbsp;utils&nbsp;&nbsp;&nbsp;&nbsp;//utils python package (db utils, dataframe utils, etc)
</blockquote></details>

<details><summary>Data</summary><blockquote>
&nbsp;&nbsp;&nbsp;&nbsp;db&nbsp;&nbsp;&nbsp;&nbsp;//project database file(s)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;metadata
<details><summary>Modeling</summary><blockquote>
<details><summary>v1.0</summary>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;design_matrix&nbsp;&nbsp;&nbsp;&nbsp;//design matrix file(s)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Output&nbsp;&nbsp;&nbsp;&nbsp;//model output data
</details>
<blockquote></details>
<details><summary>Processed</summary>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cohort<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;features<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outcome<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;adult_decomp_adt_transfer.csv
</details>
&nbsp;&nbsp;&nbsp;&nbsp;Raw&nbsp;&nbsp;&nbsp;&nbsp;//project raw data subset from datapipeline
</blockquote></details>

<details><summary>Docs&nbsp;&nbsp;&nbsp;&nbsp;//project documentation and materials</summary><blockquote>
<details><summary>Project</summary>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;code map_v1.xlsx&nbsp;&nbsp;&nbsp;&nbsp;
//outlines the code and associated data files for "start-to-finish" process of data curation<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;code map_v2.xlsx&nbsp;&nbsp;&nbsp;&nbsp;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;code map_supplement.xlsx&nbsp;&nbsp;&nbsp;&nbsp;
//outlines supporting code and data files for feature engineering, modeling, etc<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;code map_supplement_v2.xlsx&nbsp;&nbsp;&nbsp;&nbsp;<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;literature_review.pdf<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Perspectives Piece.docx
</details>
&nbsp;&nbsp;&nbsp;&nbsp;Slides&nbsp;&nbsp;&nbsp;&nbsp;//presentation slides for project milestones
</blockquote></details>

<details><summary>Output&nbsp;&nbsp;&nbsp;&nbsp;//project output files, figures, etc</summary><blockquote>
<details><summary>Figures&nbsp;&nbsp;&nbsp;&nbsp;//data visualization figures</summary>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cohort&nbsp;&nbsp;&nbsp;&nbsp;//visualization figures for cohort statistics</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;features&nbsp;&nbsp;&nbsp;&nbsp;//visualization figures for features quality assurance</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Model&nbsp;&nbsp;&nbsp;&nbsp;//visualization figures for model performance</br>
</details>
&nbsp;&nbsp;&nbsp;&nbsp;gap_analysis&nbsp;&nbsp;&nbsp;&nbsp;//gap analysis output
</blockquote></details>
.gitignore<br/>
README.md

## Getting Started

Instructions on setting up the project locally.

### Prerequisites

<details><summary>List of dependencies required for the project:</summary>
<ul>
<li>Python 3.7.3</li>
<li>SQLite3 2.6.0</li>
<li>Git 2.14.1</li>
<li>GNU Awk 4.1.4</li>
</ul>
</details>

<details><summary>Additional python packages required:</summary>
<ul>
<li>NumPy 1.16.2</li>
<li>pandas 0.24.2</li>
<li>TensorFlow 1.14.0</li>
<li>Keras 2.2.4</li>
<li>scikit-learn 0.21.2</li>
<li>XGBoost 0.90</li>
<li>imbalanced-learn 0.5.0</li>
<li>Matplotlib 3.1.0</li>
<li>seaborn 0.9.0</li>
<li>Plotly 4.1.1</li>
</ul>
</details>

### Setup

1. Get access to Duke EHR (Electrical Health Record) data from DIHI project folder (dihi_qi) via PACE machine [https://pace.ori.duke.edu/](https://pace.ori.duke.edu/)
2. Clone the repo

```sh
git clone http://pacegitlab.dhe.duke.edu/dihi/2019_rfa/adult_decompensation.git
```

3. Follow the code maps under `./Docs/Project` to run the project from start to end

## Data

All the source data comes from the following locations:

* P:/dihi_qi/data_pipeline/data
* P:/dihi_qi/data_pipeline/metadata

## Modeling

Feature Engineering specifics for Model V1.0 is available [here](https://ziyuan-shen.github.io/files/slides/feature_engineering.pdf).</br>
</br>
**Work Pipeline:**</br>
<img src="./Docs/Figures/pipeline.png" alt="drawing" width="400"/>

**Cohort Extraction Logic:**</br>
<img src="./Docs/Figures/database8.png" alt="drawing" width="450"/>

**Modeling V1.0 Specifics:**</br>
<br>
<img src="./Docs/Figures/model.png" alt="drawing" width="600"/>

## Visualizations

Data visualizations for the project include:

* ./Code/DataPrep/cohort/visualization&nbsp;&nbsp;&nbsp;&nbsp;//cohort statistics visualization</br>
  [View Visualization](https://ziyuan-shen.github.io/files/slides/cohort_statistics_visualization.pdf)
* ./Code/DataPrep/features/vitals/visualization&nbsp;&nbsp;&nbsp;&nbsp;//vitals visualization (data element count, data quality assurance, etc)
* ./Code/DataPrep/outcome/QA&nbsp;&nbsp;&nbsp;&nbsp;//ICU admission quality assurance
* ./Code/DataPrep/outcome/patient_flow&nbsp;&nbsp;&nbsp;&nbsp;//Sankey diagram visualization</br>
  View Sankey Diagram
    * [ICU sub-cohort](https://ziyuan-shen.github.io/files/visualization/adult_decompensation_sankey_diagram.html)
    * [OR to ICU sub-cohort](https://ziyuan-shen.github.io/files/visualization/adult_decomp_or_to_icu_sankey_diagram.html)
* ./Code/Model/visualization&nbsp;&nbsp;&nbsp;&nbsp;//Model visualization (model metrics, etc)</br>
  [View Visualization](https://ziyuan-shen.github.io/files/slides/model_metrics.pdf)


## Status

Project is: in progress;

To-do list:

* Hospital unit labels (LU_hospital_units table) in `P:/dihi_qi/data_pipeline/db/data_pipeline.db` needs to be updated by duh_dep_info_v06 (in next iteration)
* Encounters that touch pediatric ICU and neonate ICU need to be excluded (in next iteration)
* re-pull blood culture data as grouper has been updated (in next iteration)
* re-pull medication data and pull order data
* Data quality assurance for vitals needs to be refined (break down vitals into the three hospitals and into each distinct flo measurement name)
* 100% unit conversion for vital, analyte, medication data etc is pending
* Current random down sampling needs to be replaced by stratified down sampling
* Data collection and prediction time window is subjective to change (1-hour prediction window in next iteration)
* More outcomes (RRT events, mortality etc) are to be incorporated

## Docs

* Presentation slides
    * [Literature review](https://ziyuan-shen.github.io/files/slides/slides_literature_review.pdf)
    * [Cohort extraction](https://ziyuan-shen.github.io/files/slides/slides_mid_presentation.pdf)
    * [Feature Engineering and Model building](https://ziyuan-shen.github.io/files/slides/slides_final_presentation.pdf)
    * [Exploratory Data Analysis and Model Iterating](https://ziyuan-shen.github.io/files/slides/slides_EDA.pdf)
* Reports
    * [Literature review](https://ziyuan-shen.github.io/files/adult_decomp_literature_review.pdf)
    * [Complete Report](https://ziyuan-shen.github.io/files/adult_decomp_report.pdf)

## License

Copyright 2019 Ziyuan Shen, Duke Institute for Health Innovation (DIHI), Duke University School of Medicine, Durham NC.

All Rights Reserved.

## Contact

Ziyuan Shen - ziyuan.shen@duke.edu

Mengxuan Cui - mengxuan.cui@duke.edu

## Acknowledgement

This work is funded by [Woo Center for Big Data and Precision Health](http://healthdata.pratt.duke.edu/), in collaboration with [DIHI](https://dihi.org/) (Duke Institute for Health Innovation). The authors thank Professor [Xiling Shen](http://healthdata.pratt.duke.edu/people/xiling-shen) for consistently supporting the project and DIHI team for guidance and assistance with project specifics (Will Ratliff and Mark Sendak for hospital data resource and modeling support, Michael Gao and Marshall Nichols for technical support).
