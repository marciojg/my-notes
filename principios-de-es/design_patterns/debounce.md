chamado debounce, toda vez que for executar uma operação que será disparada repetidas vezes de
acordo com eventos gerados pelo usuário. Um claro exemplo disto é a filtragem de fotos. Então ela fez os códigos abaixo:

```ts
// photo-list.component.ts

@Component({
    // omitidas as configurações do componente.
})
export class PhotoListComponent implements OnInit, OnDestroy {

    photos: Photo[] = [];
    filter: string = '';
    debounce: Subject<string> = new Subject<string>();

    constructor(private activatedRoute: ActivatedRoute) {}

    ngOnInit() {
        this.photos = this.activatedRoute.snapshot.data.photos;
        this.debounce
            .pipe(debounceTime(300))
            .subscribe(filter => this.filter = filter);
    }

    ngOnDestroy() {
        this.debounce.unsubscribe();
    }
}
```
```html
<!-- photo-list.component.html -->

<div class="text-center mt-3 mb-3">
    <form>
        <input class="rounded" type="search" placeholder="search..."
            autofocus (keyup)="debounce.next($event.target.value)">
    </form>
</div>

<ap-photos [photos]="photos | filterByDescription: filter"></ap-photos>
```
