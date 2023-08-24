<#assign
coordinator_hostname=serviceRoles['TRINO_COORDINATOR'][0].hostname
>


coordinator=true
node-scheduler.include-coordinator=false
query.max-memory=${conf['query.maxMemory']}GB
query.max-memory-per-node=${conf['coordinator.query.maxMemoryPerNode']}GB
http-server.http.port=${conf['coordinator.http.port']}
discovery.uri=http://${coordinator_hostname}:${conf['coordinator.http.port']}


<#list confFiles['coordinator-config.properties'] as key, value>
${key}=${value}
</#list>