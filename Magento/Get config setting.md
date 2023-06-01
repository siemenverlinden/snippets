[[ magento ]] [[ snippets ]]
```php
public $scopeConfig;

public function __construct(
    
    \Magento\Framework\App\Config\ScopeConfigInterface $scopeConfig
    
) {
    $this->scopeConfig = $scopeConfig;
}

 $valueFromConfig = $this->scopeConfig->getValue('section/group/field');
 
```
