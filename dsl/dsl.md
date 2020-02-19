# DSL - Linguagem de Dominio específico, melhor explicação que achei até o momento é:


What Is a Domain Specific Language?
The general definition of DSLs is that they are languages specialized to a particular application domain or use case. This means that you can only use them for specific things—they are not suitable for general-purpose software development. If that sounds broad, that’s because it is—DSLs come in many different shapes and sizes. Here are a few important categories:

- Markup languages such as HTML and CSS are designed for describing specific things like the structure, content, and styles of web pages. It is not possible to write arbitrary algorithms with them, so they fit the description of a DSL.

- Macro and query languages (e.g., SQL) sit on top of a particular system or another programming language and are usually limited in what they can do. Therefore they obviously qualify as domain specific languages.
- Many DSLs do not have their own syntax—instead, they use the syntax of an established programming language in a clever way that feels like using a separate mini-language.
This last category is called an internal DSL, and it is one of these that we are going to create as an example very soon. But before we get into that, let’s take a look at a few well-known examples of internal DSLs. The route definition syntax in Rails is one of them:

```ruby
Rails.application.routes.draw do
  root to: "pages#main"

  resources :posts do
    get :preview

    resources :comments, only: [:new, :create, :destroy]
  end
end
```

fonte: 

https://www.toptal.com/ruby/ruby-dsl-metaprogramming-guide
