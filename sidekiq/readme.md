```
# Listar todas as filas registradas
Sidekiq::Queue.all

# Verificar se tem algum desses jobs nessa fila em retry
Sidekiq::RetrySet.new.select { |r| r.queue == "queue_default" && r.klass == "ClassNameJob" }

# Verificar se tem algum desses jobs nessa fila na fila morta        
Sidekiq::DeadSet.new.select { |r| r.queue == "queue_default" && r.klass == "ClassNameJob" }

# Verificar se tem algum desses jobs nessa fila agendado
Sidekiq::ScheduledSet.new.select { |r| r.queue == "queue_default" && r.klass == "ClassNameJob" }

# Add job agendado na fila
Sidekiq::ScheduledSet.new.each {|job| job.add_to_queue }

# Deletar todos os jobs em retry
Sidekiq::RetrySet.new.each {|job| job.kill }
Sidekiq::RetrySet.new.kill_all

Links úteis:
https://www.mikeperham.com/2021/04/20/a-tour-of-the-sidekiq-api/
