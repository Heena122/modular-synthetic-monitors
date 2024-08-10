module "simplebrowser" {
  source = "./simplebrowsermodule"
  account_id = var.account_id
  api_key = var.api_key
  region = var.region
  simplebrowser = var.simplebrowser

}
module "brokenlink" {
  source = "./brokenlinksmodule"
   account_id = var.account_id
  api_key = var.api_key
  region = var.region
  brokenlink = var.brokenlink
}

module "scriptbrowser" {
  source = "./scriptbrowser"
     account_id = var.account_id
  api_key = var.api_key
  region = var.region
  scriptbrowserr = var.scriptbrowserr


}
module "stepmonitor" {
  source = "./stepmodule"
      account_id = var.account_id
  api_key = var.api_key
  region = var.region
  stepmonitorr = var.stepmonitorr
  
  
}

module "checkmonitor" {
  source = "./checkmodule"
       account_id = var.account_id
  api_key = var.api_key
  region = var.region
  checkmonitor = var.checkmonitor
}
# module "scriptapi" {
#   source = "./scriptapimodule"
#        account_id = var.account_id
#   api_key = var.api_key
#   region = var.region
#   scriptapii = var.scriptapii

# }