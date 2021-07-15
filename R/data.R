#' KHQ data
#' @docType data
#' 
#' @keywords dataset
#' 
#' @description This data set contains an example of 30 responses of the KHQ.
#'
#' @format This data frame has 30 rows and the following 32 columns:
#' \describe{
#'   \item{1}{General Health Perception: How would you describe your health at the present?}
#'   \item{2}{Incontinence Impact}
#'   \item{3a}{Role Limitations}
#'   \item{3b}{Role Limitations}
#'   \item{4a}{Physical Limitations}
#'   \item{4b}{Physical Limitations}
#'   \item{4c}{Social Limitations}
#'   \item{4d}{Social Limitations}
#'   \item{5a}{Personal Relationship}
#'   \item{5b}{Personal Relationship}
#'   \item{5c}{Personal Relationship}
#'   \item{6a}{Emotions}
#'   \item{6b}{Emotions}
#'   \item{6c}{Emotions}
#'   \item{7a}{Sleep/Energy}
#'   \item{7b}{Sleep/Energy}
#'   \item{8a}{Severity Measures}
#'   \item{8b}{Severity Measures}
#'   \item{8c}{Severity Measures}
#'   \item{8d}{Severity Measures}
#'   \item{8e}{Severity Measures}
#'   \item{9a}{Symptom Severity Scale}
#'   \item{9b}{Symptom Severity Scale}
#'   \item{9c}{Symptom Severity Scale}
#'   \item{9d}{Symptom Severity Scale}
#'   \item{9e}{Symptom Severity Scale}
#'   \item{9f}{Symptom Severity Scale}
#'   \item{9g}{Symptom Severity Scale}
#'   \item{9h}{Symptom Severity Scale}
#'   \item{9i}{Symptom Severity Scale}
#'   \item{9j}{Symptom Severity Scale}
#'   \item{9k}{Symptom Severity Scale}
#' }
#' 
#' @usage KHQ_data_Kelleher
#' 
#' @examples 
#' \dontrun{
#' KHQScores(
#'   scores = KHQ_data_Kelleher,
#'   country = "UK",
#'   author = "Kelleher",
#'   year = 1997,
#'   ignore.invalid = TRUE
#' )
#' 
#' or
#' 
#' KHQScores(
#'   scores = KHQ_data_Kelleher,
#'   country = "UK",
#'   author = "Kelleher",
#'   year = 1997,
#'   save.xlsx = TRUE,
#'   filename = "Res_Scores_Dimensions_KHQ.xlsx",
#'   sheetName = "Scores",
#'   ignore.invalid = TRUE
#' )
#' }
#' 
#' @source Example data
#' @references Kelleher CJ, Cardozo LD, Khullar V, Salvatore S. A new questionnaire
#'   to assess the quality of life of urinary incontinent women. Br J Obstet Gynaecol. 
#'   1997 Dec;104(12):1374-9. doi: 10.1111/j.1471-0528.1997.tb11006.x. 
#'   \href{https://pubmed.ncbi.nlm.nih.gov/9422015/}{PubMed}
"KHQ_data_Kelleher"


#' KHQ five dimension data
#' @docType data
#' 
#' @keywords dataset
#' 
#' @description This data set contains an example of 30 responses of the KHQ5D.
#'
#' @format This data frame has 30 rows and the following 5 columns:
#' \describe{
#'   \item{RL}{Role Limitations:
#'     1. Your bladder problem does not affect your household tasks, job, or normal daily activities outside the home;
#'     2. Your bladder problem slightly affects your household tasks, job, or normal daily activities outside the home;
#'     3. Your bladder problem moderately affects your household tasks, job, or normal daily activities outside the home;
#'     4. Your bladder problem affects your household tasks, job, or normal daily activities outside the home a lot.}
#'   \item{PL}{Physical Limitations:
#'     1. Your bladder problem does not affect your physical activities or ability to travel;
#'     2. Your bladder problem slightly affects your physical activities or ability to travel;
#'     3. Your bladder problem moderately affects your physical activities or ability to travel;
#'     4. Your bladder problem affects your physical activities or ability to travel a lot.}
#'   \item{SL}{Social Limitations:
#'     1. Your bladder problem does not limit your ability to see/visit friends or affect your family life;
#'     2. Your bladder problem slightly limits your ability to see/visit friends or affects your family life;
#'     3. Your bladder problem moderately limits your ability to see/visit friends or affects your family life;
#'     4. Your bladder problem limits your ability to see/visit friends or affects your family life a lot.}
#'   \item{E}{Emotions:
#'     1. Your bladder problem does not make you feel depressed or anxious and nervous;
#'     2. Your bladder problem makes you feel slightly depressed or anxious and nervous;
#'     3. Your bladder problem makes you feel moderately depressed or anxious and nervous;
#'     4. Your bladder problem makes you feel depressed or anxious and nervous a lot.}
#'   \item{S}{Sleep:
#'     1. Your bladder problem does not affect your sleep;
#'     2. Your bladder problem slightly affects your sleep;
#'     3. Your bladder problem moderately affects your sleep;
#'     4. Your bladder problem affects your sleep a lot.}
#' }
#'
#' @usage KHQ5D_data
#' 
#' @examples 
#' \dontrun{
#' KHQ5D(
#'   scores = KHQ5D_data,
#'   country = "UK",
#'   type = "SG",
#'   author = "Brazier",
#'   year = 2008,
#'   source = "KHQ",
#'   ignore.invalid = TRUE
#' )
#' 
#' or
#' 
#' #' KHQ5D(
#'   scores = KHQ5D_data,
#'   country = "UK",
#'   type = "SG",
#'   author = "Brazier",
#'   year = 2008,
#'   source = "KHQ",
#'   save.xlsx = TRUE,
#'   filename = "Res_KHQ5D_uti_ind.xlsx",
#'   sheetName = "Utility_Index",
#'   ignore.invalid = TRUE
#' )
#' }
#' 
#' @source Example data
#' @references Brazier J, Czoski-Murray C, Roberts J, Brown M, Symonds T, Kelleher C. 
#'   Estimation of a preference-based index from a condition-specific measure: 
#'   the King's Health Questionnaire. Med Decis Making. 2008 Jan-Feb;28(1):113-26. 
#'   doi: 10.1177/0272989X07301820.
#'   \href{https://pubmed.ncbi.nlm.nih.gov/17641139/}{PubMed}
"KHQ5D_data"


#' Utility Index weights of the KHQ5D
#' @docType data
#' 
#' @keywords dataset
#' 
#' @description This data set contains the weights to calculate the utility index of the KHQ5D.
#'
#' @format This data frame has 30 rows and the following 5 columns:
#' \describe{
#'   \item{UK}{UK KHQ5D weights. \href{https://pubmed.ncbi.nlm.nih.gov/17641139/}{PubMed}}
#'   \item{Variables}{FullHealth - Best health, usually indicated as 1;
#'     RL2 - Role Limitations: weight for score 2;
#'     RL3 - Role Limitations: weight for score 3;
#'     RL4 - Role Limitations: weight for score 4;
#'     PL2 - Physical Limitations: weight for score 2;
#'     PL3 - Physical Limitations: weight for score 3;
#'     PL4 - Physical Limitations: weight for score 4;
#'     SL2 - Social Limitations: weight for score 2;
#'     SL3 - Social Limitations: weight for score 3;
#'     SL4 - Social Limitations: weight for score 4;
#'     E2 - Emotions: weight for score 2;
#'     E3 - Emotions: weight for score 3;
#'     E4 - Emotions: weight for score 4;
#'     S2 - Sleep: weight for score 2;
#'     S3 - Sleep: weight for score 3;
#'     S4 - Sleep: weight for score 4;
#'     Year - Year in which the weight of each item in the five dimensions of 
#'   the KHQ5D was generated;
#'     Author - Author who published the weight of each item in the five 
#'   dimensions of the KHQ5D;
#'     Type - Type of method used to generate the weight of each item from 
#'   the five dimensions of KHQ5D;
#'     Source - Version of KHQ used to build the KHQ5D items and consequently 
#'   used to generate the weights of each item in the five dimensions;
#'     Health state - Number of health states used to generate the weights of the KHQ5D.}
#' }
#' 
#' @usage Utility_Index_data
#' @source \url{https://pubmed.ncbi.nlm.nih.gov/17641139/}
#' @references Brazier J, Czoski-Murray C, Roberts J, Brown M, Symonds T, Kelleher C. 
#'   Estimation of a preference-based index from a condition-specific measure: 
#'   the King's Health Questionnaire. Med Decis Making. 2008 Jan-Feb;28(1):113-26. 
#'   doi: 10.1177/0272989X07301820.
#'   \href{https://pubmed.ncbi.nlm.nih.gov/17641139/}{PubMed}
"Utility_Index_data"


#' KHQ data to convert to KHQ5D scores
#' @docType data
#' 
#' @keywords dataset
#' 
#' @description This data set contains an example of 30 responses of the KHQ 
#'   items used to convert to KHQ5D scores.
#'
#' @format This data frame has 30 rows and the following 9 columns:
#' \describe{
#'   \item{3a}{Role Limitations}
#'   \item{3b}{Role Limitations}
#'   \item{4a}{Physical Limitations}
#'   \item{4b}{Physical Limitations}
#'   \item{4d}{Social Limitations}
#'   \item{5c}{Personal Relationship}
#'   \item{6a}{Emotions}
#'   \item{6b}{Emotions}
#'   \item{7a}{Sleep/Energy}
#' }
#' 
#' @usage KHQ_Conv_KHQ5D_data
#' @examples 
#' \dontrun{
#' KHQConvKHQ5D(
#'   scores = KHQ_Conv_KHQ5D_data,
#'   ignore.invalid = TRUE
#' )
#' 
#' or
#' 
#' KHQConvKHQ5D(
#'   scores = KHQ_Conv_KHQ5D_data,
#'   save.xlsx = TRUE,
#'   filename = "KHQ_conv_KHQ5D.xlsx",
#'   sheetName = "Scores",
#'   ignore.invalid = TRUE
#' )
#' }
#' @source Example data
#' @references Brazier J, Czoski-Murray C, Roberts J, Brown M, Symonds T, Kelleher C. 
#'   Estimation of a preference-based index from a condition-specific measure: 
#'   the King's Health Questionnaire. Med Decis Making. 2008 Jan-Feb;28(1):113-26. 
#'   doi: 10.1177/0272989X07301820.
#'   \href{https://pubmed.ncbi.nlm.nih.gov/17641139/}{PubMed}
"KHQ_Conv_KHQ5D_data"