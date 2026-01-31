**Calculating the molecular weight of a protein by creating custom functions**

First, let’s understand what is a protein made up of. We know that proteins are the building blocks and polymeric chains of amino acids. So essentially any protein is made up of amino acids that are linked to each other by peptide bonds to make a long polymeric chain. These amino acids including alanine, cysteine, glutamine are all represented by letters. Alanine for example is represented by Ala or A; glutamine is represented by Gln or Q, similarly cysteine is represented by Cys or C.

Protein names will be read as amino acid sequence in R, which essentially means that the function we will create in R is going to treat each alphabet of the protein name we have input as an amino acid. If the input string has a letter that matches any of the amino acid alphabets, then the function will calculate the molecular weight of that protein in kilodaltons.

1.     We will start by creating a custom function in R for which the syntax is

Function\_name <- function( variable) {

                        # code

                        Return ()

}

We also added a name in the variable of our custom function to act as a default protein name.

2.     Then we will try to split the protein name into individual alphabets so R can read it and compare it to the amino acid. For this purpose, we use the function strsplit(x, split). Hence, if we input Insulin, then it will read and return the value as ‘I’, ‘N’, ‘S’, ‘U’, ‘L’, ‘I’, ‘N’.

3.     Now we create 2 vectors that will store our information about the different letters that each denote an amino acid and the corresponding molecular weight for these amino acids.

4.     We will use ‘for’ loop and ‘if’ statements to put conditions such that if the amino acid matches with the alphabet of the protein name, it should add the molecular weight of all these amino acids to compute for the molecular weight of the entire protein.

5.     Another if statement was incorporated to account for a condition, where the input protein name has an alphabet that is not a valid amino acid. Hence, in that case, the function will return 0.

6.     Finally, the return statement for the custom function will provide the molecular weight of the protein in kilodalton.

7.     You can run this function by assigning it to a variable and printing it in R console.