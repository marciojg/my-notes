  requireUnless(condition: () => AbstractControl) {
    return (formControl: AbstractControl): ValidationErrors => {
      if (!formControl.parent) {
        return null;
      }

      const value = condition().value
      if (!value || value.length < 4 || value.length > 50) {
        return Validators.required(formControl)
      }

      return null
    }
  }

  ngOnInit() {
    this.filterFormGroup = this.formBuilder.group({
      created_at: [''],
      origin:     [''],
      user:       ['', [
        Validators.minLength(4),
        Validators.maxLength(50),
        this.requireUnless(() => this.filterFormGroup.get('file_name'))
      ]],
      file_name:  ['', [
        Validators.minLength(4),
        Validators.maxLength(50),
        this.requireUnless(() => this.filterFormGroup.get('user'))
      ]]
    });

    this.setupValidationUpdate();
  }

  setupValidationUpdate() {
    const file = this.filterFormGroup.get('file_name')
    const user = this.filterFormGroup.get('user')
    const noEvent = { emitEvent: false }

    file.valueChanges.subscribe(_ => { user.updateValueAndValidity(noEvent) });
    user.valueChanges.subscribe(_ => { file.updateValueAndValidity(noEvent) });
  }
