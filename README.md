# Automação com Ruby + Cucumber

### Configurações realizadas no yaml

```yaml
---
    default: -p html -p bdd -p json -p msg
    html: --format html --out=log/features.html
    dot: --format progress
    bdd: --format pretty
    json: --format json -o "log/report.json"
    msg: --format=message
```



### Relatório gerado pelo ruby

![img_relatorio_002](/assets/img_relatorio_002.png)

### Relatório customizado

![img_relatorio](/assets/img_relatorio.png)