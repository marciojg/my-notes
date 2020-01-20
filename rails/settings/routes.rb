Boas estruturas de rotas

#Devise
```
devise_for :users, controllers: { sessions: 'main/devise/sessions' }
```

#NameSpace
```
namespace :main, path: '', path_names: { new: 'novo', create: 'novo', edit: 'editar', update: 'editar' } do
  with_options concerns: [:activatable], except: [:destroy] do
    resources :teste, path: 'testees'
    
    resources :bla, path: 'bla' do
      get :testeoutro, on: :collection
    end
    
    resources :generic_evaluations, path: 'avaliacoes/:evaluation_class_name', path_names: { new: 'novo', create: 'novo', edit: 'editar', update: 'editar' }, controller: '/main/generic_evaluations' do
      member do
        get :transiterate
      end
      
      collection do
        get :calendar, path: 'escalas'
      end
    end
  end
end
```

#NameSpaceAPI
```
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      with_options only: %i[index] do
        resources :teste
      end
    end
  end
```
