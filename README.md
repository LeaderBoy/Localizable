# Localizable

[Code From](https://medium.com/@mendibarouk/enhance-your-localized-capabilities-on-your-ios-applications-d3ba17138077)

### How to get the localized string?
just 
```swift
.food.local /// Food or 食物
```

#### Example 

```swift
enum Tag : String {
    case traffic
    case food
    case cosmetics
}

extension Tag : Localizable {
    var key: String {
        return "tag_" + self.rawValue
    }

    var value: String {
        return self.rawValue
    }
}
```

in Localizable.strings you need the following:

English Version

```swift
"tag_traffic" = "Traffic";
"tag_food" = "Food";
"tag_cosmetics" = "Cosmetics";
```

Chinese Version

```swift
"tag_traffic" = "交通";
"tag_food" = "餐饮";
"tag_cosmetics" = "化妆品";
```


