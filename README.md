**Terraform** é uma ferramenta de infraestrutura como códico (Infrastructure as Code - IaC), desenvolvida pela HashiCorp, que permite gerenciar, provisionar e orquestrar recursos de infraestrutura em diferentes provedores de serviços de nuvem, data centers locais e outras plataformas. Sua abordagem declarativa  facilita  a  criação  e  manutenção  de  ambientes  complexos, proporcionando maior controle, consistência e eficiência para equipes de TI.

A utilização de Infraestrutura como código garante:

- **Automação:** redução de tarefas manuais repetitivas;
- **Consistência:** minimiza erros humanos e discrepâncias entre ambientes;
- **Escalabilidade:** facilidade para gerenciar ambientes de grande porte;
- **Rastreamento:** histórico através de sistemas de controle de versão;

### Definindo Variáveis (AWS) no Terminal 

Use:

$env:AWS_ACCESS_KEY_ID="XXXXXXXXXXXX"
$env:AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXX"
$env:AWS_SESSION_TOKEN="XXXXXXXXXXXXXXXXXXX...."
gci env: (Verifica as variáveis locais)

### Principais comandos

**terraform init:** executado para inicializar o terraform, configurar back-ends e baixar plugins se necessário. Normalmente esse é o primeiro comando que deve ser executado.

**terraform validade:** Verifica se o código de configuração está correto em termos de sintaxe e estrutura.

**terraform plan:** Exibe o plano de execução, ou seja, se houver alguma alteração no state, ele apenas mostrará como será executado sem fazer qualquer alteração.

**terraform apply:** Executa o as instruções exibidas no ***plan***. 

- Variáveis:
-auto-approve: aplica as mudanças automaticamente, sem solicitar confirmação.
-var-file: especifica um arquivo de variáveis para personalizar configurações.
-target: aplica apenas recursos específicos

**terraform show:** exibe um resumo dos recursos configurados.

**terraform destroy:** destrói os recursos

- Variáveis:
-target: destrói apenas recursos específicos.
-auto-approve: executa sem solicitar confirmação.

**terraform output:** Le o arquivo tfstate e retorna as variáveis de saída definidas no bloco output.

**terraform refresh:** atualiza o estado local. Utilizado quando alguma alteração foi feita fora do terraform.

**terraform state:** oferece ferramentas avançadas para gerenciar o arquivo de estado.

**terraform fmt:** formata o código (HCL) do terraform, garantindo padronização e identação.

**terraform graph:** gera uma representação gráfica das dependências entre recursos.

**terraform fmt:** formata todos os arquivos para o padrão do HCL.