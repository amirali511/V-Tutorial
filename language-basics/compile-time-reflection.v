struct User {
    name string
    age  int
}

fn main() {
    $for field in User.fields {
        println('$field.name: $field.typ')
    }
}
