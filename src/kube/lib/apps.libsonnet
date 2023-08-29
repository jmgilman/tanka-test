local testapp = import 'apps/testapp/main.libsonnet';

{
    new():: {
        testapp: testapp.new(),
    },
}
