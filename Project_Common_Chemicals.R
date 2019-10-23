t=searchabsL(vitiligoabs,restrict = c("vitiligo","cancer"))
l=t@PMID
i=length(l)
i=i-1
temp=c()
while (i>0){
  p=pubtator_function(l[i])
  if (p!=" No Data "){
    q <- p$Chemicals
    temp=c(temp,q)
  }
  i=i-1
}
tremp=table(temp)
sort(tremp,TRUE)
