#' Health Savings Account (HSA) Contribution limits
#'
#' Data set with IRS limits (in US dollars) for contributions to health savings
#' accounts.
#'
#' The differences between single and family HSAs can be confusing. All HSAs are owned individually
#' (even if your health insurance is family coverage). HSAs cannot be jointly owned by both spouses.
#' If you are enrolled in a self-only high-deductible health plan (HDHP), you have a single HSA.
#' If you are enrolled in a family HDHP (you and at least one other person), you are enrolled in a family HSA.
#'
#' In both single and family HSAs, funds can be spend on medical expenses for yourself,
#' spouse, or dependents.
#'
#' The $1,000 catch-up contribution is per-person age 55+. However, you cannot make more than one
#' catch-up contribution to the same HSA.
#'
#' @format ## `hsa_limits`
#' A data frame with 7 rows and 4 columns:
#' \describe{
#'   \item{year}{Tax year}
#'   \item{single}{Annual contribution limit for single HSAs}
#'   \item{family}{Annual contribution limit for family HSAs}
#'   \item{catchup}{The extra catch-up contribution available per person age 55+}
#' }
#' @source <https://dqydj.com/historical-hsa-contribution-limit/>
"hsa_limits"

#' Medicare Part B Premiums by Year
#'
#' Data set that gives the Medicare Part B monthly premiums by year.
#'
#' It is a very common misconception that "you get Medicare for free at age 65."
#' Part A (hospital insurance) is usually premium-free. But Part B (outpatient) always has a monthly
#' premium.
#'
#' Most medicare enrollees will pay the standard premium for Medicare Part B. High-income medicare enrollees
#' have to pay additional premiums due to IRMAA (Income-Related Monthly Adjustment Amount) if income is above
#' a certain threshold. See [?irmaa] for data on IRMAA thresholds.
#'
#' @format ## `premiums_b`
#' A data frame with 21 rows and 2 columns:
#' \describe{
#'   \item{year}{Tax year}
#'   \item{premium}{Monthly premium for Medicare Part B}
#' }
#' @source <https://www.healthline.com/health/medicare/medicare-part-b-premium-increase-history#part-b-increase-history>
"premiums_b"
