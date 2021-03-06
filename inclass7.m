%Inclass assignment 7. 
%Walter Frank Lenoir
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% A. What human chromosome is it located on?
%Chromosome 13
% B. How many exons does it have?
%3 exons
% C. What is the precise position of its stop codon in the genome?
% Using hg38, the stop codon of cdx2 is located at 27,962,135-27,962,138
% D. Identify at least one difference in sequence between human and mouse
% CDX2.
%At position 27966630, the alignment shows a T in human cdx2 and G in mice.
% E. In which human tissues is it expressed most abundantly?
%Cdx2 appears to be expressed most in colon (transverse) tissue.

%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2. 
accessnum = 'NM_001265.4';
% B. Use MATLAB to read the genbank information corresponding to that
% accession number. 
genbankinfo = getgenbank(accessnum);

% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?

start = genbankinfo.CDS.indices(1);
stop = genbankinfo.CDS.indices(2);

%The part before the start codon is the promoter region and the parts after the stop codon is the PolyA tail

% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 

proteininfo = genbankinfo.CDS.protein_id;
proteininfo = getgenpept(proteininfo);
proteininfo.Features;
%In the features it states that the homeobox is located between "Region 190..242"