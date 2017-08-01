#!/bin/bash

########################################################################
# make_cmd_reference.sh
#
# This script generates a documentation file with the command reference
# for each of the tools in the SNP Pipeline.  This is part of the
# RST/Sphinx documentation for the SNP Pipeline.
#
# This script should be manually executed before each release to
# capture the changes since the last release.
#
# Input : None
# Output: cmd_ref.rst
#
########################################################################

echo > x.txt
echo '.. DO NOT EDIT.' >> x.txt
echo '.. This file is machine generated by the make_cmd_reference.sh script.' >> x.txt
echo >> x.txt
echo '.. _cmd-ref-label:' >> x.txt
echo >> x.txt
echo ================= >> x.txt
echo Command Reference >> x.txt
echo ================= >> x.txt
echo >> x.txt

echo '.. _cmd-ref-cfsan-snp-pipeline:' >> x.txt
echo >> x.txt
echo cfsan_snp_pipeline       >> x.txt
echo ------------------------ >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline           -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo '.. _cmd-ref-run-snp-pipeline:' >> x.txt
echo >> x.txt
echo run                      >> x.txt
echo ------------------------ >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline run       -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo data                     >> x.txt
echo ------------------------ >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline data      -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo index_ref                >> x.txt
echo ------------------------ >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline index_ref -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo map_reads                 >> x.txt
echo ------------------------- >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline map_reads -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo call_sites               >> x.txt
echo ------------------------ >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline call_sites -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo '.. _cmd-ref-snp-filter:' >> x.txt
echo >> x.txt
echo filter_regions           >> x.txt
echo ------------------------ >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline filter_regions -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo merge_sites              >> x.txt
echo ------------------------ >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline merge_sites -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo '.. _cmd-ref-call-consensus:' >> x.txt
echo >> x.txt
echo call_consensus           >> x.txt
echo ------------------------ >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline call_consensus -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo >> x.txt
echo merge_vcfs                  >> x.txt
echo --------------------------- >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline merge_vcfs -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo >> x.txt
echo snp_matrix               >> x.txt
echo ------------------------ >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline snp_matrix -h | sed 's/^/  /' >> x.txt
echo >> x.txt

echo >> x.txt
echo distance                    >> x.txt
echo --------------------------- >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline distance -h | sed 's/^/  /' >> x.txt

echo >> x.txt
echo snp_reference               >> x.txt
echo --------------------------- >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline snp_reference -h | sed 's/^/  /' >> x.txt

echo >> x.txt
echo collect_metrics             >> x.txt
echo --------------------------- >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline collect_metrics -h | sed 's/^/  /' >> x.txt

echo >> x.txt
echo combine_metrics >> x.txt
echo --------------------------- >> x.txt
echo >> x.txt; echo :: >> x.txt; echo >> x.txt
cfsan_snp_pipeline combine_metrics -h | sed 's/^/  /' >> x.txt

cat x.txt | 
sed 's~/home/steven.davis/.virtualenvs/snp-pipeline-2.7/bin/~~' | \
sed 's~/home/steven.davis/.virtualenvs/snp-pipeline-3.5/bin/~~' | \
grep -v "# Command           :" | \
grep -v "# Working Directory :" | \
grep -v "# Hostname          :" | \
grep -v "# RAM               :" > cmd_ref.rst

rm x.txt
