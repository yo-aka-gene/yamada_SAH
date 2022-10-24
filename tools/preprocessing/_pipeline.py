import numpy as np
import pandas as pd

data = pd.read_excel(
    "data/gse79416/GSE79416_gene_exp.xls",
    index_col = 0
)

df = np.log2(
    data.drop(
        data.T.filter(regex="fantom").columns,
        axis=0
    ).iloc[:, 8:14].astype(float).T + 1
)

df.columns.name = "log2(RKPM+1)"
df.index = [name.split("_")[0] for name in df.index]

df.to_pickle("data/gse79416.pkl")

label = {
    "label_name": [name[:-1] for name in df.index],
    "label_index": [0 if "CC" in name else 1 for name in df.index]
}

pd.DataFrame(label, index=df.index).to_pickle("data/gse79416_label.pkl")
