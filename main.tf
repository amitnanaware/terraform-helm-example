provider "helm" {
kubernetes {
config_path = "~/.kube/config"
}
}

resource "helm_release" "example" {
	name = "nginx_ex"
	namespace = "dev"
	chart = "stable/nginx-ingress"
	version = "1.24.0"
}