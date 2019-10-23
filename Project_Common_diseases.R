t=searchabsL(vitiligoabs,restrict = c("vitiligo","cancer"))
l=t@PMID
i=length(l)
i=i-1
chem=c()
dis=c()
gene=c()

while (i>0){
  p=pubtator_function(l[i])
  if (p!=" No Data "){
    p1 <- p$Chemicals
    chem=c(chem,p1)
    p2 <- p$Diseases
    dis=c(dis,p2)
    p3 <- p$Genes
    gene=c(gene,p3)
    
  }
  i=i-1
}
chem1=table(chem)
dis1=table(dis)
gene1=table(gene)

chem1=sort(chem1,FALSE)
dis1=sort(dis1,FALSE)
gene1=sort(gene1,FALSE)
chem2=as.data.frame(chem1)
dis2=as.data.frame(dis1)
gene2=as.data.frame(gene1)
chem_list=c()
gene_list=c()
dis_list=c()
temp1=attributes(chem1)$dimnames[1]
temp2=attributes(dis1)$dimnames[1]
temp3=attributes(gene1)$dimnames[1]
i=1
j=1
k=1
n1=length(chem1)
n2=length(dis1)
n3=length(gene1)
while (i<n1){
  if (chem2$Freq[i]==1){
    h=strsplit(temp1$chem[i],">")
    chem_list=c(chem_list,h[[1]][1])
  }
  i=i+1;
}

while (j<n2){
  if (dis2$Freq[j]==1){
    h=strsplit(temp2$dis[j],">")
    dis_list=c(dis_list,h[[1]][1])
  }
  j=j+1;
}
while (k<n3){
  if (gene2$Freq[k]==1){
    h=strsplit(temp3$gene[k],">")
    gene_list=c(gene_list,h[[1]][1])
  }
  k=k+1
}
n2=length(dis_list)
j=1
while (j<n2){
  cat(j,"\n",file = "output_PS.txt", append = TRUE)
  cat(dis_list[j],"\n",file = "output_PS.txt", append = TRUE)
  s=Give_Sentences(dis_list[j],t)
  cat(length(s),"\t")
  if (length(s)!=0){
    cat(s[[1]][1],"\n\n",file = "output_PS.txt", append = TRUE)  
    #sink(file="PS_output.txt",append=TRUE)
    #print(s[[1]][1],"\n\n")
    #sink()
    }
  j=j+1
}
