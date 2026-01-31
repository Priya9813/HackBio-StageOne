molecular_weight_of_protein <- function(input_protein= 'PRIYA') {
  input_protein <- strsplit(x=input_protein, split= "")[[1]]
  print(input_protein)
  print(length(input_protein))
  
  amino_acid <- c('A','R','N','D','C','E','Q','G', 'H','I','L','K','M','F','P','S','T','W','Y', 'V')
  molecular_weight <- c(89.09, 174.20, 132.12, 133.10, 121.15, 147.13, 146.15, 75.07, 155.16, 131.18, 131.18, 146.19, 149.21, 165.19, 115.13, 105.09, 119.12,  204.23, 181.19, 117.15)
  
  total_weight <- 0
  
  for (a in input_protein) {
    
    match_count <- 0   
    
    for (i in 1:length(amino_acid)) {
      
      if (a == amino_acid[i]) {
        total_weight <- total_weight + molecular_weight[i]
        match_count <- match_count + 1
      }
    }
    
    if (match_count == 0) {
      return(0)
    }
  }
  
  return(total_weight / 1000)
}

protein <- 'SELENA'  # Input your protein name or by default it will take name PRIYA
molecular_weight_in_KD <- molecular_weight_of_protein(protein)
print(molecular_weight_in_KD)

