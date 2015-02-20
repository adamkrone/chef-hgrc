# hgrc

Configures an .hgrc file for Mecurial. Currently only handles extensions and auth.

## Attributes

- `node['hgrc']['extensions']` - array of extension names
- `node['hgrc']['users']` - array of user configurations

Example:

```
node['hgrc']['users'] = [
  { name: 'deploy',
    extensions: %w(color pager),
    auth: [
      {
        name: 'deploy',
        prefix: 'hg.example.com',
        username: 'deploy',
        password: 'mypassword',
        schemes: 'http https'
      }
    ]
  }
]
```

## Recipes
