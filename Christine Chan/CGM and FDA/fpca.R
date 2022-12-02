library(refund)
# FPCA on irregularly sampled data
load("~/Dropbox/Work/Vigers/CF/Christine Chan/CGM and FDA/R_Objects/ydf.Rdata")
fit = fpca.sc(ydata = na.omit(ydf))
# Save object
save(fit,file = "~/Dropbox/Work/Vigers/CF/Christine Chan/CGM and FDA/R_Objects/fpca_sc_fit.Rdata")