install.packages('IRkernel')
IRkernel::installspec(user = FALSE)  # to register the kernel in the current R installation
jupyter labextension install @techrah/text-shortcuts  # for RStudio’s shortcuts