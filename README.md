Scripts and data associated to the paper "The minimum value of the Colless index".

### Contents

* **MinColless.R** R script defining the function MinColless that computes the minimum Colless index C(n) for bifurcating trees with n leaves
* **QB.R**  R script defining the function QB that computes the set QB(n) of pairs (n1,n2) such that 1<=n1<=n2, n1+n2=n 
and C(n1)+C(n2)+n1-n2=C(n).
* **colless.py** Python script defining the function binary_colless_index, that computes the Colless index of a binary 
shape ; min_colless, which computes all trees that attain the minimum Colless index ; and the function mincolless_root,
that computes the set QB(n) of pairs (n1,n2) such that 1<=n1<=n2, n1+n2=n 
and C(n1)+C(n2)+n1-n2=C(n).
* **treebase**: folder containing the files **binary_ts.txt** (the shapes of all bifurcating phylogenetic trees in TreeBase with more than 3 leaves (December 12, 2019)) and **min_colless_ts.txt** (the minimal Colless tree shapes in the previous file).
