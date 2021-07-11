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
#' @usage data(KHQ_data_Kelleher)
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
#'   \enumerate{1. Your bladder problem does not affect your household tasks, job, or normal daily activities outside the home;}
#'   \enumerate{2. Your bladder problem slightly affects your household tasks, job, or normal daily activities outside the home;}
#'   \enumerate{3. Your bladder problem moderately affects your household tasks, job, or normal daily activities outside the home;}
#'   \enumerate{4. Your bladder problem affects your household tasks, job, or normal daily activities outside the home a lot.}}
#'   \item{PL}{Physical Limitations:
#'   \enumerate{1. Your bladder problem does not affect your physical activities or ability to travel;}
#'   \enumerate{2. Your bladder problem slightly affects your physical activities or ability to travel;}
#'   \enumerate{3. Your bladder problem moderately affects your physical activities or ability to travel;}
#'   \enumerate{4. Your bladder problem affects your physical activities or ability to travel a lot.}}
#'   \item{SL}{Social Limitations:
#'   \enumerate{1. Your bladder problem does not limit your ability to see/visit friends or affect your family life;}
#'   \enumerate{2. Your bladder problem slightly limits your ability to see/visit friends or affects your family life;}
#'   \enumerate{3. Your bladder problem moderately limits your ability to see/visit friends or affects your family life;}
#'   \enumerate{4. Your bladder problem limits your ability to see/visit friends or affects your family life a lot.}}
#'   \item{E}{Emotions:
#'   \enumerate{1. Your bladder problem does not make you feel depressed or anxious and nervous;}
#'   \enumerate{2. Your bladder problem makes you feel slightly depressed or anxious and nervous;}
#'   \enumerate{3. Your bladder problem makes you feel moderately depressed or anxious and nervous;}
#'   \enumerate{4. Your bladder problem makes you feel depressed or anxious and nervous a lot.}}
#'   \item{S}{Sleep:
#'   \enumerate{1. Your bladder problem does not affect your sleep;}
#'   \enumerate{2. Your bladder problem slightly affects your sleep;}
#'   \enumerate{3. Your bladder problem moderately affects your sleep;}
#'   \enumerate{4. Your bladder problem affects your sleep a lot.}}
#' }
#'
#' @usage data(KHQ5D_data)
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
#'   \item{Variables}{Countries that have weights of KHQ5D:
#'   \enumerate{FullHealth - Best health, usually indicated as 1.}
#'   \enumerate{RL2 - Role Limitations: weight for score 2.}
#'   \enumerate{RL3 - Role Limitations: weight for score 3.}
#'   \enumerate{RL4 - Role Limitations: weight for score 4.}
#'   \enumerate{PL2 - Physical Limitations: weight for score 2.}
#'   \enumerate{PL3 - Physical Limitations: weight for score 3.}
#'   \enumerate{PL4 - Physical Limitations: weight for score 4.}
#'   \enumerate{SL2 - Social Limitations: weight for score 2.}
#'   \enumerate{SL3 - Social Limitations: weight for score 3.}
#'   \enumerate{SL4 - Social Limitations: weight for score 4.}
#'   \enumerate{E2 - Emotions: weight for score 2.}
#'   \enumerate{E3 - Emotions: weight for score 3.}
#'   \enumerate{E4 - Emotions: weight for score 4.}
#'   \enumerate{S2 - Sleep: weight for score 2.}
#'   \enumerate{S3 - Sleep: weight for score 3.}
#'   \enumerate{S4 - Sleep: weight for score 4.}
#'   \enumerate{Year - Year in which the weight of each item in the five dimensions of 
#'   the KHQ5D was generated.}
#'   \enumerate{Author - Author who published the weight of each item in the five 
#'   dimensions of the KHQ5D.}
#'   \enumerate{Type - Type of method used to generate the weight of each item from 
#'   the five dimensions of KHQ5D.}
#'   \enumerate{Source - Version of KHQ used to build the KHQ5D items and consequently 
#'   used to generate the weights of each item in the five dimensions.}
#'   \enumerate{Health state - Number of health states used to generate the weights of the KHQ5D.}}
#' }
#' 
#' @usage data(Utility_Index_data)
#' @source \url{https://pubmed.ncbi.nlm.nih.gov/17641139/}
#' @references Brazier J, Czoski-Murray C, Roberts J, Brown M, Symonds T, Kelleher C. 
#'   Estimation of a preference-based index from a condition-specific measure: 
#'   the King's Health Questionnaire. Med Decis Making. 2008 Jan-Feb;28(1):113-26. 
#'   doi: 10.1177/0272989X07301820.
#'   \href{https://pubmed.ncbi.nlm.nih.gov/17641139/}{PubMed}
"Utility_Index_data"

