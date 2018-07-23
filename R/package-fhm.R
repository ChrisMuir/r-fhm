#' fhm
#' 
#' \code{flat_hash_map} provides a drop-in replacement for \code{std::unodered_map}
#' and \code{std::unordred_set}. The hash map provided in \code{flat_hash_map} considerably
#' outperforms \code{std::unordered_map} in a number of different benchmarks. 
#' For a detailed write-up on the methods and some benchmarks, see this blogpost:
#' \url{https://probablydance.com/2017/02/26/i-wrote-the-fastest-hashtable/}.
#' 
#' This package makes the \code{flat_hash_map} methods available to other R 
#' packages, via header files.
#' 
#' The original source code was written by Malte Skarupke.
#' 
"_PACKAGE"
