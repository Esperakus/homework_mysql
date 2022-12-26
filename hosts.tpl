[mysql_nodes]
%{ for ip in mysql_nodes_hostname ~}
${ip}
%{ endfor ~}


[ansible_host]
localhost