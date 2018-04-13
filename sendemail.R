#write invitation email to Hannover relative Pitch posessors

HannoverRP<-filter(Hannover, AP_sums<10)
recipients <- c("teresa.wenhart@hmtm-hannover.de")
emailsend <- send.mail(from = sender, to=recipients, 
                   subject= "Einladung zu Experimenten im Institut für Musikermedizin",
                   body= "..............",
                   smtp = list(host.name = "mail.hmtm-hannover.de", 
                      port = 587,ssl=TRUE, user.name = wenhartt, passwd = Psy_Music_16),
                   authenticate = TRUE, send = FALSE)
emailsend$send()
