package main

import (
	"github.com/barryrandall/terraform-provider-minikube/minikube"
	"github.com/hashicorp/terraform/plugin"
)

func main() {
	plugin.Serve(&plugin.ServeOpts{
		ProviderFunc: minikube.Provider})
}
