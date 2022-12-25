[mysql_nodes]
%{ for hostname in mysql_nodes_hostname ~}
${hostname}
%{ endfor ~}


[ansible_host]
localhost