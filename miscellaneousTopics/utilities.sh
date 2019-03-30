
# ==========================================================================================================================
# ==========================================================================================================================
# ----------
# Constants:
# ----------
SUCCESS=0
ERROR=1

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

# possible DSWP/ST version prefixes:
declare -a UTILS_version_arr=("7.5" "7.6" "8.0")


# DSWP related constants:
declare -A UTILS_st_bin_file_names_prefixes_arr=([1800]="NPT1800_Emb_" [1200]="NPT1200i_Emb_" [1050]="NPT1050i_Emb_")


# ==========================================================================================================================
# ==========================================================================================================================

# ----------
# Functions:
# ----------

function check_ret_val {
	
	if [ $1 -ne 0 ];
	then
		echo "check_ret_val - $2, aborting..."
		exit $1
	fi
}

