
## Terraform
```
terraform init
terraform plan -o setup
terraform apply setup
```

## Ansible 
```
ansible-playbook -i inventory.yml app-service.yml

ansible-playbook -i inventory.yml database-setup.yml

ansible-playbook -i inventory.yml configure-redis.yml
```

## Good Practices
- Terraform: Store terraform.state files in a version-controlled environment, such as an S3 bucket with state locking enabled, or on GitLab Terraform feature.
- Ansible: Design playbooks and modules to be immutable, ensuring idempotency and avoiding manual changes to infrastructure.
- Secrets Management: Handle secrets outside of the code repository using a Secret Manager like HashiCorp Vault, AWS Secrets Manager, or Azure Key Vault.
- Git: Use feature branches for development, and manage application versions through Git tags to integrate smoothly with CI/CD pipelines.
- Database: Use a cloud-based Database as a Service (DBaaS) to minimize operational overhead and increase scalability (e.g., Azure SQL, Amazon RDS), in this example, I used SQL.
- Avoid Credential Replication: Keep credentials and sensitive information outside the application code and avoid hardcoding passwords.
- Monitoring: Implement monitoring solutions such as Grafana, Datadog, and Prometheus to track application and infrastructure health.
- Observability: Ensure end-to-end observability with logs, metrics, and traces to identify bottlenecks and troubleshoot faster, Availability, Latency and Error Rate, are really important in this scenario.
- Cache and Queues: Utilize caching services like Redis and message queues like RabbitMQ to optimize performance and scalability.
- Firewall and Permissions: Configure firewalls properly and enforce the principle of least privilege by setting granular permissions for resources and services.