complete<-function(directory,id){
        filenames<-sprintf("%03d.csv",id)
        filenamesnew<-paste(directory,filenames,sep="/")
        x<-function(filenames){
                readdata<-read.csv(filenames,header=T)
                readcompletedata<-complete.cases(readdata)
                length<-sum(readcompletedata)
                length    
        }
        lengthcompile<-lapply(filenamesnew,x)
        #readdata<-read.csv(filenamesnew,header=T)
        #readcompletedata<-complete.cases(readdata)
        #length<-sum(readcompletedata)
        result<-cbind(filenames,lengthcompile)
        result
}

