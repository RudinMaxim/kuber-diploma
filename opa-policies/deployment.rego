package main

deny[msg] {
  input.kind = "Deployment"
  container := input.spec.template.spec.containers[_]
  not container.securityContext.runAsNonRoot
  msg = sprintf("Container %v must run as non-root", [container.name])
}
