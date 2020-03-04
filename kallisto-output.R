abundance_24 <- read.table("/home/rafcio/RNA-seq/projekt_cewki_Malphigiego/Sweden-Zambia/kallisto_abundance/abundance_24.tsv", header = T)
abundance_25 <- read.table("/home/rafcio/RNA-seq/projekt_cewki_Malphigiego/Sweden-Zambia/kallisto_abundance/abundance_25.tsv", header = T)
abundance_28 <- read.table("/home/rafcio/RNA-seq/projekt_cewki_Malphigiego/Sweden-Zambia/kallisto_abundance/abundance_28.tsv", header = T)
abundance_29 <- read.table("/home/rafcio/RNA-seq/projekt_cewki_Malphigiego/Sweden-Zambia/kallisto_abundance/abundance_29.tsv", header = T)
abundance_32 <- read.table("/home/rafcio/RNA-seq/projekt_cewki_Malphigiego/Sweden-Zambia/kallisto_abundance/abundance_32.tsv", header = T)
abundance_33 <- read.table("/home/rafcio/RNA-seq/projekt_cewki_Malphigiego/Sweden-Zambia/kallisto_abundance/abundance_33.tsv", header = T)

library(pastecs)
stat.desc(abundance_24$tpm)
stat.desc(abundance_25$tpm)
stat.desc(abundance_28$tpm)
stat.desc(abundance_29$tpm)
stat.desc(abundance_32$tpm)
stat.desc(abundance_33$tpm)

length(abundance_24$tpm[abundance_24$tpm > 0])
length(abundance_25$tpm[abundance_25$tpm > 0])
length(abundance_28$tpm[abundance_28$tpm > 0])
length(abundance_29$tpm[abundance_29$tpm > 0])
length(abundance_32$tpm[abundance_32$tpm > 0])
length(abundance_33$tpm[abundance_33$tpm > 0])

# pierwsze 10 id transkryptów, gdy posortowane według tpm malejąco
abundance_24$target_id[order(abundance_24$tpm, decreasing = T)][1:10]
abundance_25$target_id[order(abundance_25$tpm, decreasing = T)][1:10]
abundance_28$target_id[order(abundance_28$tpm, decreasing = T)][1:10]
abundance_29$target_id[order(abundance_29$tpm, decreasing = T)][1:10]
abundance_32$target_id[order(abundance_32$tpm, decreasing = T)][1:10]
abundance_33$target_id[order(abundance_33$tpm, decreasing = T)][1:10]
