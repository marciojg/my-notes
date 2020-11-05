# Criar funcao validadora simples ou recebendo parametros
https://dzone.com/articles/how-to-create-custom-validators-in-angular

```
import { AbstractControl } from '@angular/forms';

export function validateNonZero(control: AbstractControl): { [key: string]: any } | null  {
  const forbidden = parseFloat(control.value)
  return !forbidden ? { nonZeroInvalid: { value: control.value } } : null;
}
```

----

# Criar funcao validadora como componente ou diretiva
https://www.digitalocean.com/community/tutorials/angular-custom-validation

