# on diuflx75: deepdive do company_mention
# run/20161128/122440.785587471/plan.sh
# execution plan for data/company_mention

: ## process/init/app ##########################################################
: # Done: 2016-11-28T00:48:52+0100 (11h 35m 48s ago)
: process/init/app/run.sh
: mark_done process/init/app
: ##############################################################################


: ## process/init/relation/articles ############################################
: # Done: 2016-11-28T00:48:53+0100 (11h 35m 47s ago)
: process/init/relation/articles/run.sh
: mark_done process/init/relation/articles
: ##############################################################################


: ## data/articles #############################################################
: # Done: 2016-11-28T00:48:53+0100 (11h 35m 47s ago)
: # no-op
: mark_done data/articles
: ##############################################################################


: ## process/ext_sentences_by_nlp_markup #######################################
: # Done: 2016-11-28T11:27:51+0100 (56m 49s ago)
: process/ext_sentences_by_nlp_markup/run.sh
: mark_done process/ext_sentences_by_nlp_markup
: ##############################################################################


: ## data/sentences ############################################################
: # Done: 2016-11-28T11:27:51+0100 (56m 49s ago)
: # no-op
: mark_done data/sentences
: ##############################################################################


## process/ext_company_mention_by_map_company_mention ########################
# Done: N/A
process/ext_company_mention_by_map_company_mention/run.sh
mark_done process/ext_company_mention_by_map_company_mention
##############################################################################


## data/company_mention ######################################################
# Done: N/A
# no-op
mark_done data/company_mention
##############################################################################

