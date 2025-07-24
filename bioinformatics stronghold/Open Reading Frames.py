import re

geneCode = {"UUU":"F","UUC":"F","UUA":"L","UUG":"L","UCU":"S",
            "UCC":"S","UCA":"S","UCG":"S","UAC":"Y","UAU":"Y","UAA":"*",
            "UAG":"*","UGU":"C","UGC":"C","UGA":"*","UGG":"W",
            "CUU":"L","CUC":"L","CUA":"L","CUG":"L","CCU":"P","CCC":"P",
            "CCA":"P","CCG":"P","CAU":"H","CAC":"H","CAA":"Q","CAG":"Q",
            "CGU":"R","CGC":"R","CGA":"R","CGG":"R","AUU":"I","AUC":"I",
            "AUA":"I","AUG":"M","ACU":"T","ACC":"T","ACA":"T","ACG":"T",
            "AAU":"N","AAC":"N","AAA":"K","AAG":"K","AGU":"S","AGC":"S",
            "AGA":"R","AGG":"R","GUU":"V","GUC":"V","GUA":"V","GUG":"V",
            "GCU":"A","GCA":"A","GCC":"A","GCG":"A","GAC":"D","GAU":"D","GAA":"E","GAG":"E",
            "GGU":"G","GGC":"G","GGA":"G","GGG":"G"}

def rc(s):
    return s.replace("A","t").replace("T","a").replace("G","c").replace("C","g").upper()[::-1].replace("T","U")

res = set()
seq = ""
protein = []

with open("rosalind_orf.txt","r") as f:
    for line in f.readlines()[1::]:
        line = line.rstrip()
        seq += line

seq_rc = rc(seq)
seq= seq.replace("T","U")

for j in range(3):
    s = ""
    t = ""
    for i in range(j,len(seq),3):
        try:
            s += geneCode[seq[i:i+3]]
            t += geneCode[seq_rc[i:i+3]]
        except KeyError:
            pass
    protein.append(s)
    protein.append(t)
for aa in protein:
    arr = re.findall(r"(?=(M.*?\*))",aa)
    for s in arr:
        s = s.replace("*","")
        res.add(s)
print("\n".join(res))
