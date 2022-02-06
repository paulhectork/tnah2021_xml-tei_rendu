from collatex import *

with open('brl.txt') as f:
    brl = " ".join(f.readlines())
with open('brn.txt') as f:
    brn = " ".join(f.readlines())
with open('atw.txt') as f:
    atw = " ".join(f.readlines())

collation = Collation()
collation.add_plain_witness("atw", atw)
collation.add_plain_witness("brl", brl)
collation.add_plain_witness("brn", brn)

alignment_table = collate(collation, output="tei", segmentation=False, near_match=True)

with open('froissart_collatex-base.xml', 'w') as output:
    output.write(alignment_table)