get_cf_genotype_class_severity = function(genotypes,out = "severity",na_unknown = T){
  # Make table
  I = c('1717-1G->A', '1717-1G-A',  'G542X', 'Q493X', 'R1162X', 'R553X', 'R553x', 'W1089X', 'W1282X', '1078delT', 'R75X',
        '3659delC', '621+1G->T', '621+1G>T', '394delTT', '3120 + 1g->A', '1154InsTC',  '1154insTC', '1213delT',
        '1259insA', '1288insTA', '3791delC', 'E60X', 'K710X', '2184delA', 'CFTRdele2,3', '663delT', 'Glu528',
        '1461ins4', '306insA', 'R709X', 'CFTRdele22-24', '2711delT', '2183AA- >G')
  I = unique(tolower(gsub("[[:punct:]]|\\s","",I)))
  I = matrix(c(I,class = rep("I",length(I))),ncol = 2)
  II = c('F508', 'F508del', 'F508del ', 'G85E', 'I507', 'I 507', 'N1303K', 'A559T', 'R560T', 'A561E')
  II = unique(tolower(gsub("[[:punct:]]|\\s","",II)))
  II = matrix(c(II,class = rep("II",length(II))),ncol = 2)
  III = c('G551D', 'G551S', 'S549N')
  III = unique(tolower(gsub("[[:punct:]]|\\s","",III)))
  III = matrix(c(III,class = rep("III",length(III))),ncol = 2)
  IV = c('R334W', 'R347P', 'R117H', 'R117C', 'P67L', 'L206W', 'I206w', 'D614G', 'R347H', 'D1152H', '3849+10kbC>T')
  IV = unique(tolower(gsub("[[:punct:]]|\\s","",IV)))
  IV = matrix(c(IV,class = rep("IV",length(IV))),ncol = 2)
  V = c('A455E', '2789+5G->A', '3849+10CT', '3849+10kbC->T', '711+3A->G', '1898+5G->T',
        'P574H', '3272-26A->G5')
  V = unique(tolower(gsub("[[:punct:]]|\\s","",V)))
  V = matrix(c(V,class = rep("V",length(V))),ncol = 2)
  unknown = c("unknown","I506T","35002ag","26221ga")
  unknown = matrix(c(unknown,class = rep("Unknown",length(unknown))),ncol = 2)
  geno = data.frame(do.call(rbind,list(I,II,III,IV,V,unknown)))
  colnames(geno) = c("Genotype","Class")
  geno$Severity = factor(geno$Class,levels = c("I","II","III","IV","V","Unknown"),
                         labels = c("Severe","Severe","Severe","Mild","Mild","Unknown"))
  # Add some without class
  severity_only = matrix(c("S531P","Unknown","Mild","2184insa","Unknown","Severe",
                           "I506T","Unknown","Unknown","P205S","Unknown","Unknown",
                           "Phe1052Val","Unknown","Mild","I336K","Unknown","Mild",
                           "2143delt","Unknown","Severe","M470V","Unknown","Unknown",
                           "Y1092X","Unknown","Severe","R1066C","Unknown","Severe",
                           "3905insT","Unknown","Severe","R851X","Unknown","Severe",
                           "D110H","Unknown","Mild","R1158X","Unknown","Severe",
                           "R1070W","Unknown","Mild","Q2X","Unknown","Severe",
                           "H199Y","Unknown","Mild","D1270N","Unknown","Mild",
                           "G178R","Unknown","Severe","2957delT","Unknown","Severe",
                           "V520F","Unknown","Severe","ex14a","Unknown","Unknown",
                           "Q1209P","Unknown","Unknown","S492F","Unknown","Mild",
                           "R1066H","Unknown","Unknown","M1101K","Unknown","Severe",
                           "CFTRdele1","Unknown","Severe"),ncol = 3,byrow = T)
  colnames(severity_only) = c("Genotype","Class","Severity")
  severity_only[,1] = tolower(gsub("[[:punct:]]|\\s","",severity_only[,1]))
  geno = rbind(geno,severity_only)
  # Match up - remove punctuation and make lower case
  genotypes = tolower(gsub("[[:punct:]]|\\s","",genotypes))
  # Replace NA with unknown
  classes = geno$Class[match(genotypes,geno$Genotype)]
  severity = geno$Severity[match(genotypes,geno$Genotype)]
  if(na_unknown){
    classes[is.na(classes)] = "Unknown"
    severity[is.na(severity)] = "Unknown"
    }
  if (out == "class"){
    return(as.character(classes))
  } else if (out == "severity"){
    return(as.character(severity))
  }
}
