local k = import 'github.com/grafana/jsonnet-libs/ksonnet-util/kausal.libsonnet';

{
  new():: {
    deployment:
      k.apps.v1.deployment.deployment.new('test', replicas=1, containers=[
        k.core.v1.container.new('test', 'test-image')
        + k.core.v1.container.container.withPorts(
          k.core.v1.container.port.newNamed(8080, 'http') + k.core.v1.container.port.withProtocol('TCP')
        ),
      ]),
  },
}
