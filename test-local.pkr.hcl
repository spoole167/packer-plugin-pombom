packer {
  required_plugins {
    syft = {
      version = ">= 0.0.1"
      source  = "github.com/spoole167/pombom"
    }
  }
}

source "null" "example" {
  communicator = "none"
}

build {
  sources = ["source.null.example"]

  post-processor "pombom" {
    name = "World"
  }
}