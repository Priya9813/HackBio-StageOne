gc_calculator <- function(input_gene) {
  input_gene <- strsplit(x=input_gene, split= "")[[1]]
  print(input_gene)
  print(length(input_gene))
  
  gc_counter <-0
  for (nuc in input_gene) {
    if (nuc == 'G'| nuc == 'C') {
      gc_counter= gc_counter+1 
    } else if (nuc == 'g'| nuc == 'c') {
      gc_counter <- gc_counter+1 
    }
  }
  return((gc_counter/length(input_gene))* 100)
}

geneA <- 'GCATTTAT'
my_final_gc_content <- gc_calculator(input_gene= geneA)
print(my_final_gc_content)

geneB <- 'gcaGCTTAT'
my_final_gc_contentB <- gc_calculator(input_gene= geneB)
print(my_final_gc_contentB)
