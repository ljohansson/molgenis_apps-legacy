#
# =====================================================
# $Id$
# $URL$
# $LastChangedDate$
# $LastChangedRevision$
# $LastChangedBy$
# =====================================================
#

#MOLGENIS walltime=08:00:00 nodes=1 cores=1 mem=1

<#if seqType == "SR">
	inputs "${srbarcodefqgz}"
	alloutputsexist \
	 "${leftfastqczip}" \
	 "${leftfastqcsummarytxt}" \
	 "${leftfastqcsummarylog}" \
<#else>
	inputs "${leftbarcodefqgz}"
	inputs "${rightbarcodefqgz}"
	
	alloutputsexist \
	 "${leftfastqczip}" \
	 "${leftfastqcsummarytxt}" \
	 "${leftfastqcsummarylog}" \
	 "${rightfastqczip}" \
	 "${rightfastqcsummarytxt}" \
	 "${rightfastqcsummarylog}"
</#if>

# first make logdir...
mkdir -p "${intermediatedir}"

# pair1
${fastqcjar} ${leftbarcodefqgz} \
-Dfastqc.output_dir=${intermediatedir} \
-Dfastqc.unzip=false

<#if seqType == "PE">
# pair2
${fastqcjar} ${rightbarcodefqgz} \
-Dfastqc.output_dir=${intermediatedir} \
-Dfastqc.unzip=false
</#if>