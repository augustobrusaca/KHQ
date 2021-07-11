
# Kelleher et al. (1997)

#         Domains             Items
# General Health Perception - 1
# Incontinence Impact       - 2
# Role Limitations          - 3a and 3b
# Physical limitations      - 4a and 4b
# Social limitations        - 4c and 4d
# Personal Relationships    - 5a, 5b and 5c
# Emotions                  - 6a, 6b and 6c
# Sleep/Energy              - 7a and 7b
# Severity Measures         - 8a, 8b, 8c, 8d and 8e
# Symptom Severity Scale    - 9a, 9b, 9c, 9d, 9e, 9f, 9g, 9h, 9i and 9j

# Brusaca et al. (2021)

#         Domains             Items
# General Health Perception - 1
# Incontinence Impact       - 2
# Limitations of Daily Life - 3a, 3b, 3c, 3d and 3e
# Personal Relationships    - 4a, 4b and 4c
# Emotions                  - 5a, 5b and 5c
# Sleep/Energy              - 6a and 6b
# Severity Measures         - 7a, 7b and 7c
# Symptom Severity Scale    - 8a, 8b, 8c, 8d, 8e, 8f, 8g, 8h, 8i and 8j


#' @title KHQScores
#' @description Function used to generate scores for each dimension of the KHQ.
#' @param scores PARAM_DESCRIPTION
#' @param country PARAM_DESCRIPTION
#' @param author PARAM_DESCRIPTION
#' @param year PARAM_DESCRIPTION
#' @param save.xlsx PARAM_DESCRIPTION, Default: FALSE
#' @param filename PARAM_DESCRIPTION, Default: NULL
#' @param sheetName PARAM_DESCRIPTION, Default: NULL
#' @param ignore.invalid logical to indicate whether to ignore items data 
#'   with invalid, incomplete or missing data, Default: FALSE
#' @return A data frame with scores of each dimension of the KHQ.
#' @details If using the original structure the items must be named equal the 
#'   number in the original questionnaire published by Kelleher and collaborator 
#'   in 1997 (1, 2, 3a, 3b, 4a, 4b, 4c, 4d, 5a, 5b, 5c, 6a, 6b, 6c, 7a, 7b, 8a,  
#'   8b, 8c, 8d, 8e, 9a, 9b, 9c, 9d, 9e, 9f, 9g, 9h, 9i, 9j, 9k).
#'   
#'   If using the Brazilian structure the items must be named equal the number in 
#'   the questionnaire published by Brusaca and collaborator in 2021 (1, 2, 3a, 3b,
#'   3c, 3d, 3e, 4a, 4b, 4c, 5a, 5b, 5c, 6a, 6b, 7a, 7b, 7c, 8a, 8b, 8c, 8d, 8e, 
#'   8f, 8g, 8h, 8i, 8j).
#' 
#' 
#' @examples 
#' \dontrun{
#' KHQScores(
#'   scores = KHQ_data,
#'   country = "UK",
#'   author = "Kelleher",
#'   year = 1997,
#'   ignore.invalid = TRUE
#' )
#' 
#' or
#' 
#' KHQScores(
#'   scores = KHQ_data,
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
#' @seealso 
#'  \code{\link[KHQ]{KHQConvKHQ5D}}
#' @rdname KHQScores
#' @export 
#' @importFrom magrittr %>%
#' @importFrom xlsx write.xlsx


KHQScores <- function(
  scores,
  country,
  author,
  year,
  save.xlsx = FALSE,
  filename = NULL,
  sheetName = NULL,
  ignore.invalid = FALSE
){
  
  # Checking the class of the data
  if (is.data.frame(scores) == FALSE) {
    stop("Use an matrix of data with 'class' data.frame instead of ", class(scores))
    
  }
  
  
  # Checking number of items
  if (author == "Kelleher" & length(names(scores)) != 32) {
    print(names(scores))
    stop("The number of items is different from what is needed to calculate KHQ domain scores. 
      \n Number of items must be 32:
      \n General Health Perception  - 1;
      \n Incontinence Impact        - 2;
      \n Role Limitations           - 3a and 3b;
      \n Physical limitations       - 4a and 4b;
      \n Social limitations         - 4c and 4d;
      \n Personal Relationships     - 5a, 5b and 5c;
      \n Emotions                   - 6a, 6b and 6c;
      \n Sleep/Energy               - 7a and 7b;
      \n Severity Measures          - 8a, 8b, 8c, 8d and 8e;
      \n Symptom Severity Scale     - 9a, 9b, 9c, 9d, 9e, 9f, 9g, 9h, 9i, 9j and 9k.")
    
  } else if (author == "Brusaca" & length(names(scores)) != 28) {
    print(names(scores))
    stop("The number of items is different from what is needed to calculate KHQ domain scores. 
      \n Number of items must be 28:
      \n General Health Perception  - 1;
      \n Incontinence Impact        - 2;
      \n Limitations of Daily Life  - 3a, 3b, 3c, 3d and 3e;
      \n Personal Relationships     - 4a, 4b and 4c;
      \n Emotions                   - 5a, 5b and 5c;
      \n Sleep/Energy               - 6a and 6b;
      \n Severity Measures          - 7a, 7b and 7c;
      \n Symptom Severity Scale     - 8a, 8b, 8c, 8d, 8e, 8f, 8g, 8h, 8i and 8j.")
    
  }
  
  
  # Checking the name of the items
  NamesUK <- c("1","2","3a","3b","4a","4b","4c","4d","5a","5b","5c","6a","6b","6c","7a","7b","8a","8b","8c","8d","8e","9a","9b","9c","9d","9e","9f","9g","9h","9i","9j","9k")
  
  NamesBR <- c("1","2","3a","3b","3c","3d","3e","4a","4b","4c","5a","5b","5c","6a","6b","7a","7b","7c","8a","8b","8c","8d","8e","8f","8g","8h","8i","8j")
  
  if (length(names(scores)) == 32) {
    if (!all(NamesUK %in% names(scores))) {
      print(names(scores))
      stop("The name of the items is different from what is expected. 
      \n Item names must be:
      \n General Health Perception  - 1;
      \n Incontinence Impact        - 2;
      \n Role Limitations           - 3a and 3b;
      \n Physical limitations       - 4a and 4b;
      \n Social limitations         - 4c and 4d;
      \n Personal Relationships     - 5a, 5b and 5c;
      \n Emotions                   - 6a, 6b and 6c;
      \n Sleep/Energy               - 7a and 7b;
      \n Severity Measures          - 8a, 8b, 8c, 8d and 8e;
      \n Symptom Severity Scale     - 9a, 9b, 9c, 9d, 9e, 9f, 9g, 9h, 9i, 9j and 9k.")
    }
  } else if (length(names(scores)) == 28) {
    if (!all(NamesBR %in% names(scores))) {
      print(names(scores))
      stop("The name of the items is different from what is expected. 
      \n Item names must be:
      \n General Health Perception  - 1;
      \n Incontinence Impact        - 2;
      \n Limitations of Daily Life  - 3a, 3b, 3c, 3d and 3e;
      \n Personal Relationships     - 4a, 4b and 4c;
      \n Emotions                   - 5a, 5b and 5c;
      \n Sleep/Energy               - 6a and 6b;
      \n Severity Measures          - 7a, 7b and 7c;
      \n Symptom Severity Scale     - 8a, 8b, 8c, 8d, 8e, 8f, 8g, 8h, 8i and 8j.")
    }
  }
  
  
  # Checking NAs
  if (ignore.invalid == FALSE & any(is.na(scores) == TRUE)) {
    rowNAs = which(is.na(scores) == TRUE, arr.ind = TRUE) %>% data.frame()
    print(scores[unique(rowNAs$row),])
    stop("Missing/non-numeric item found. In case the response was randomly lost, consider use ignore.invalid == TRUE to avoid further problems.")
  }
  
  
  # Checking coded scores
  if (ncol(scores) == 32) {
    if (any(apply(scores[1], 1, function(x) !all(x %in% c(NA, 1:5)))) | 
        any(apply(scores[2:8], 1, function(x) !all(x %in% c(NA, 1:4)))) | 
        any(apply(scores[9:11], 1, function(x) !all(x %in% c(NA, 0:4)))) | 
        any(apply(scores[12:21], 1, function(x) !all(x %in% c(NA, 1:4)))) | 
        any(apply(scores[22:32], 1, function(x) !all(x %in% c(NA, 0:3))))) {
      rowCodedWrong <- data.frame(
        rowCodedWrong_1_5 = apply(scores[1], 1, function(x) !all(x %in% c(NA, 1:5))),
        rowCodedWrong_1_4 = apply(scores[2:8], 1, function(x) !all(x %in% c(NA, 1:4))),
        rowCodedWrong_0_4 = apply(scores[9:11], 1, function(x) !all(x %in% c(NA, 0:4))),
        rowCodedWrong_1.4 = apply(scores[12:21], 1, function(x) !all(x %in% c(NA, 1:4))),
        rowCodedWrong_0_3 = apply(scores[22:32], 1, function(x) !all(x %in% c(NA, 0:3))))
      
      print(scores[apply(rowCodedWrong, 1, function(x) any(x %in% TRUE)),])
      
      stop("Scores must be coded as follow: 
      \n General Health Perception  - 1 - from 1 to 5;
      \n Incontinence Impact        - 2 - from 1 to 4;
      \n Role Limitations           - 3a and 3b - from 1 to 4;
      \n Physical limitations       - 4a and 4b - from 1 to 4;
      \n Social limitations         - 4c and 4d - from 1 to 4;
      \n Personal Relationships     - 5a, 5b and 5c - from 1 to 4, 'not applicable' being 0;
      \n Emotions                   - 6a, 6b and 6c - from 1 to 4;
      \n Sleep/Energy               - 7a and 7b - from 1 to 4;
      \n Severity Measures          - 8a, 8b, 8c, 8d and 8e - from 1 to 4;
      \n Symptom Severity Scale     - 9a, 9b, 9c, 9d, 9e, 9f, 9g, 9h, 9i, 9j and 9k  - from 0 to 3, 'omitted' being 0.")
    }
    
  } else if (ncol(scores) == 28) {
    if (any(apply(scores[1], 1, function(x) !all(x %in% c(NA, 1:5)))) | 
        any(apply(scores[2:7], 1, function(x) !all(x %in% c(NA, 1:4)))) | 
        any(apply(scores[8:10], 1, function(x) !all(x %in% c(NA, 0:4)))) | 
        any(apply(scores[11:18], 1, function(x) !all(x %in% c(NA, 1:4)))) | 
        any(apply(scores[19:28], 1, function(x) !all(x %in% c(NA, 0:3))))) {
      rowCodedWrong <- data.frame(
        rowCodedWrong_1_5 = apply(scores[1], 1, function(x) !all(x %in% c(NA, 1:5))),
        rowCodedWrong_1_4 = apply(scores[2:7], 1, function(x) !all(x %in% c(NA, 1:4))),
        rowCodedWrong_0_4 = apply(scores[8:10], 1, function(x) !all(x %in% c(NA, 0:4))),
        rowCodedWrong_1.4 = apply(scores[11:18], 1, function(x) !all(x %in% c(NA, 1:4))),
        rowCodedWrong_0_3 = apply(scores[19:28], 1, function(x) !all(x %in% c(NA, 0:3))))
      
      print(scores[apply(rowCodedWrong, 1, function(x) any(x %in% TRUE)),])
      
      stop("Scores must be coded as follow: 
      \n General Health Perception  - 1 - from 1 to 5;
      \n Incontinence Impact        - 2 - from 1 to 4;
      \n Limitations of Daily Life  - 3a, 3b, 3c, 3d and 3e- from 1 to 4;
      \n Personal Relationships     - 4a, 4b and 4c - from 1 to 4, 'not applicable' being 0;
      \n Emotions                   - 5a, 5b and 5c - from 1 to 4;
      \n Sleep/Energy               - 6a and 6b - from 1 to 4;
      \n Severity Measures          - 7a, 7b and 7c - from 1 to 4;
      \n Symptom Severity Scale     - 8a, 8b, 8c, 8d, 8e, 8f, 8g, 8h, 8i and 8j  - from 0 to 3, 'omitted' being 0.")
    }
    
  }
  
  
  # Calculate scores by domain
  if (ncol(scores) == 32) {
    dfScores <- data.frame(matrix(0, nrow = nrow(scores), ncol = 10))
    
    scores$"5a"[scores$"5a" == 0] <- NA
    scores$"5b"[scores$"5b" == 0] <- NA
    scores$"5c"[scores$"5c" == 0] <- NA
    
  } else if (ncol(scores) == 28) {
    dfScores <- data.frame(matrix(0, nrow = nrow(scores), ncol = 8))
    
    scores$"4a"[scores$"4a" == 0] <- NA
    scores$"4b"[scores$"4b" == 0] <- NA
    scores$"4c"[scores$"4c" == 0] <- NA
    
  }
  
  
  if (ncol(scores) == 32 & country == "UK" & author == "Kelleher" & year == 1997) {
    colnames(dfScores) <- c("GHP","II","RL","PL","SL","PR","E","SE","SM","SSS")
    
    for (i in 1:nrow(scores)) {
      # General Health Perception
      dfScores[i,1] <- ((scores$"1"[i] - 1) / 4) * 100
      
      # Incontinence Impact
      dfScores[i,2] <- ((scores$"2"[i] - 1) / 3) * 100
      
      # Role Limitations
      if (sum(is.na(scores[i,c("3a","3b")])) == 1) {
        dfScores[i,3] <- (((sum(scores[i,c("3a","3b")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("3a","3b")])) == 2) {
        dfScores[i,3] <- NA
        
      } else {
        dfScores[i,3] <- (((sum(scores[i,c("3a","3b")], na.rm = TRUE)) - 2) / 6) * 100
        
      }
      
      # Physical Limitations
      if (sum(is.na(scores[i,c("4a","4b")])) == 1) {
        dfScores[i,4] <- (((sum(scores[i,c("4a","4b")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("4a","4b")])) == 2) {
        dfScores[i,4] <- NA
        
      } else {
        dfScores[i,4] <- (((sum(scores[i,c("4a","4b")], na.rm = TRUE)) - 2) / 6) * 100
        
      }
      
      # Social Limitations
      if (sum(is.na(scores[i,c("4c","4d","5c")])) == 3) {
        dfScores[i,5] <- NA
        
      } else if (is.na(scores$"5c"[i])) {
        dfScores[i,5] <- (((sum(scores[i,c("4c","4d")], na.rm = TRUE)) - 2) / 6) * 100
        
      } else if (is.na(scores$"4c"[i])) {
        dfScores[i,5] <- (((sum(scores[i,c("4d","5c")], na.rm = TRUE)) - 2) / 6) * 100
        
      } else if (is.na(scores$"4d"[i])) {
        dfScores[i,5] <- (((sum(scores[i,c("4c","5c")], na.rm = TRUE)) - 2) / 6) * 100
        
      } else if (is.na(scores$"4c"[i]) & is.na(scores$"5c"[i])) {
        dfScores[i,5] <- (((scores$"4d"[i]) - 1) / 3) * 100
        
      } else if (is.na(scores$"4d"[i]) & is.na(scores$"5c"[i])) {
        dfScores[i,5] <- (((scores$"4c"[i]) - 1) / 3) * 100
        
      } else {
        dfScores[i,5] <- (((sum(scores[i,c("4c","4d","5c")], na.rm = TRUE)) - 3) / 9) * 100
        
      }
      
      # Personal Relationship
      if (sum(is.na(scores[i,c("5a","5b")])) == 1) {
        dfScores[i,6] <- (((sum(scores[i,c("5a","5b")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("5a","5b")])) == 2) {
        dfScores[i,6] <- NA
        
      } else {
        dfScores[i,6] <- (((sum(scores[i,c("5a","5b")], na.rm = TRUE)) - 2) / 6) * 100
        
      }
      
      # Emotions
      if (sum(is.na(scores[i,c("6a","6b","6c")])) == 1) {
        dfScores[i,7] <- (((sum(scores[i,c("6a","6b","6c")], na.rm = TRUE)) - 2) / 6) * 100
        
      } else if (sum(is.na(scores[i,c("6a","6b","6c")])) == 2) {
        dfScores[i,7] <- (((sum(scores[i,c("6a","6b","6c")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("6a","6b","6c")])) == 3) {
        dfScores[i,7] <- NA
        
      } else {
        dfScores[i,7] <- (((sum(scores[i,c("6a","6b","6c")], na.rm = TRUE)) - 3) / 9) * 100
        
      }
      
      # Sleep/Energy
      if (sum(is.na(scores[i,c("7a","7b")])) == 1) {
        dfScores[i,8] <- (((sum(scores[i,c("7a","7b")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("7a","7b")])) == 2) {
        dfScores[i,8] <- NA
        
      } else {
        dfScores[i,8] <- (((sum(scores[i,c("7a","7b")], na.rm = TRUE)) - 2) / 6) * 100
        
      }
      
      # Severity Measures
      if (sum(is.na(scores[i,c("8a","8b","8c","8d","8e")])) == 1) {
        dfScores[i,9] <- (((sum(scores[i,c("8a","8b","8c","8d","8e")], na.rm = TRUE)) - 4) / 12) * 100
        
      } else if (sum(is.na(scores[i,c("8a","8b","8c","8d","8e")])) == 2) {
        dfScores[i,9] <- (((sum(scores[i,c("8a","8b","8c","8d","8e")], na.rm = TRUE)) - 3) / 9) * 100
        
      } else if (sum(is.na(scores[i,c("8a","8b","8c","8d","8e")])) == 3) {
        dfScores[i,9] <- (((sum(scores[i,c("8a","8b","8c","8d","8e")], na.rm = TRUE)) - 2) / 6) * 100
        
      } else if (sum(is.na(scores[i,c("8a","8b","8c","8d","8e")])) == 4) {
        dfScores[i,9] <- (((sum(scores[i,c("8a","8b","8c","8d","8e")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("8a","8b","8c","8d","8e")])) == 5) {
        dfScores[i,9] <- NA
        
      } else {
        dfScores[i,9] <- (((sum(scores[i,c("8a","8b","8c","8d","8e")], 
                                na.rm = TRUE)) - 5) / 15) * 100
        
      }
      
      # Symptom Severity Scale
      dfScores[i,10] <- sum(scores[i,c("9a","9b","9c","9d","9e","9f","9g","9h","9i","9j","9k")], 
                            na.rm = TRUE)
      
    }
    
  } else if (ncol(scores) == 28 & country == "BR" & author == "Brusaca" & year == 2021) {
    colnames(dfScores) <- c("GHP","II","LDL","PR","E","SE","SM","SSS")
    
    for (i in 1:nrow(scores)) {
      # General Health Perception
      dfScores[i,1] <- ((scores$"1"[i] - 1) / 4) * 100
      
      # Incontinence Impact
      dfScores[i,2] <- ((scores$"2"[i] - 1) / 3) * 100
      
      # Limitations of Daily Life
      if (sum(is.na(scores[i,c("3a","3b","3c","3d","3e")])) == 1) {
        dfScores[i,3] <- (((sum(scores[i,c("3a","3b","3c","3d","3e")], na.rm = TRUE)) - 4) / 12) * 100
        
      } else if (sum(is.na(scores[i,c("3a","3b","3c","3d","3e")])) == 2) {
        dfScores[i,3] <- (((sum(scores[i,c("3a","3b","3c","3d","3e")], na.rm = TRUE)) - 3) / 9) * 100
        
      } else if (sum(is.na(scores[i,c("3a","3b","3c","3d","3e")])) == 3) {
        dfScores[i,3] <- (((sum(scores[i,c("3a","3b","3c","3d","3e")], na.rm = TRUE)) - 2) / 6) * 100
        
      } else if (sum(is.na(scores[i,c("3a","3b","3c","3d","3e")])) == 4) {
        dfScores[i,3] <- (((sum(scores[i,c("3a","3b","3c","3d","3e")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("3a","3b","3c","3d","3e")])) == 5) {
        dfScores[i,3] <- NA
        
      } else {
        dfScores[i,3] <- (((sum(scores[i,c("3a","3b","3c","3d","3e")], 
                                na.rm = TRUE)) - 5) / 15) * 100
        
      }
      
      # Personal Relationship
      if (sum(is.na(scores[i,c("4a","4b","4c")])) == 1) {
        dfScores[i,4] <- (((sum(scores[i,c("4a","4b","4c")], na.rm = TRUE)) - 2) / 6) * 100
        
      } else if (sum(is.na(scores[i,c("4a","4b","4c")])) == 2) {
        dfScores[i,4] <- (((sum(scores[i,c("4a","4b","4c")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("4a","4b","4c")])) == 3) {
        dfScores[i,4] <- NA
        
      } else {
        dfScores[i,4] <- (((sum(scores[i,c("4a","4b","4c")], na.rm = TRUE)) - 3) / 9) * 100
        
      }
      
      # Emotions
      if (sum(is.na(scores[i,c("5a","5b","5c")])) == 1) {
        dfScores[i,5] <- (((sum(scores[i,c("5a","5b","5c")], na.rm = TRUE)) - 2) / 6) * 100
        
      } else if (sum(is.na(scores[i,c("5a","5b","5c")])) == 2) {
        dfScores[i,5] <- (((sum(scores[i,c("5a","5b","5c")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("5a","5b","5c")])) == 3) {
        dfScores[i,5] <- NA
        
      } else {
        dfScores[i,5] <- (((sum(scores[i,c("5a","5b","5c")], na.rm = TRUE)) - 3) / 9) * 100
        
      }
      
      # Sleep/Energy
      if (sum(is.na(scores[i,c("6a","6b")])) == 1) {
        dfScores[i,6] <- (((sum(scores[i,c("6a","6b")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("6a","6b")])) == 2) {
        dfScores[i,6] <- NA
        
      } else {
        dfScores[i,6] <- (((sum(scores[i,c("6a","6b")], na.rm = TRUE)) - 2) / 6) * 100
        
      }
      
      # Severity Measures
      if (sum(is.na(scores[i,c("7a","7b","7c")])) == 1) {
        dfScores[i,7] <- (((sum(scores[i,c("7a","7b","7c")], na.rm = TRUE)) - 2) / 6) * 100
        
      } else if (sum(is.na(scores[i,c("7a","7b","7c")])) == 2) {
        dfScores[i,7] <- (((sum(scores[i,c("7a","7b","7c")], na.rm = TRUE)) - 1) / 3) * 100
        
      } else if (sum(is.na(scores[i,c("7a","7b","7c")])) == 3) {
        dfScores[i,7] <- NA
        
      } else {
        dfScores[i,7] <- (((sum(scores[i,c("7a","7b","7c")], na.rm = TRUE)) - 3) / 9) * 100
        
      }
      
      # Symptom Severity Scale
      dfScores[i,8] <- sum(scores[i,c("8a","8b","8c","8d","8e","8f","8g","8h","8i","8j")], 
                           na.rm = TRUE)
      
    }
    
  }
  
  # Saving results to an Excel file
  if (save.xlsx == TRUE & is.null(filename) & is.null(sheetName)) {
    xlsx::write.xlsx(dfScores, file = "Res_Scores_Dimensions_KHQ.xlsx", sheetName = "Scores", row.names = FALSE, showNA = FALSE)
    
  } else if (save.xlsx == TRUE) {
    xlsx::write.xlsx(dfScores, file = filename, sheetName = sheetName, row.names = FALSE, showNA = FALSE)
  }
  
  return(dfScores)
  
}
