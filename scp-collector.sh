# If they don't already exist - create the respective directories where you want the files collected.
# To create a generic directory template for multiple files of the same kind, use the nested directory creation command
#   i.e. mkdir -p /tmp/armaan/host-1/files
#        mkdir -p /tmp/armaan/host-2/files

# To avoid permissioning issues, run the command as your own user and then, as root, chown the files once collected.

# Run each line as a single command.
for host in london-aws-agent345; do scp -r armaan-root@$host:/local/aws/devops-tools/jenkins/application/etc/ hussaarm@tokyo-aws-agent628:/tmp/gl-maint/$host-gl_maint/; done

for host in london-aws-agent345; do scp -r armaan-root@$host:/local/aws/permissions/user234/id/etc/ hussaarm@tokyo-aws-agent628:/tmp/gl-fms/$host-gl_fms/; done

for host in london-aws-agent345; do scp -r armaan-root@$host:/local/aws/connector-cache/gl_docker_ln/application/etc/ hussaarm@tokyo-aws-agent628:/tmp/gl-autosys/$host-gl_autosys/; done

for host in london-aws-agent345 london-aws-agent346; do scp -r armaan-root@$host:/local/aws/utilities/rdp-2.9.0/application/log/ hussaarm@tokyo-aws-agent628:/tmp/gl-autosys/$host-gl_autosys/; done

for host in london-aws-agent346 london-aws-agent346; do scp -r armaan-root@$host:/local/aws/processes/pid/java/1201/ hussaarm@tokyo-aws-agent628:/tmp/gl-te/$host-gl_te/; done
