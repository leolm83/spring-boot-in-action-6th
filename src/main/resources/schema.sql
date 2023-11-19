create table if not exists Taco_Order (
    id identity,
    delivery_Name varchar(50) not null,
    delivery_Street varchar(50) not null,
    delivery_City varchar(50) not null,
    delivery_State varchar(2) not null,
    delivery_Zip varchar(10) not null,
    cc_number varchar(16) not null,
    cc_expiration varchar(5) not null,
    cc_cvv varchar(3) not null,
    placed_at timestamp not null
);
create table if not exists Taco (
    id identity,
    Listing 3.9 Defining the Taco Cloud schema Taco_Order id: identity delivery_name: varchar delivery_street: varchar delivery_city: varchar delivery_state: varchar delivery_zip: varchar cc_number: varchar cc_expiration: varchar cc_cvv: varchar placed_at: timestamp * taco: bigint taco_key: bigint ingredient: varchar Ingredient_Ref Ingredient id: varchar name: varchar type: varchar Taco id: identity name: varchar taco_order: bigint taco_order_key: bigint createdAt: timestamp name varchar(50) not null,
    taco_order bigint not null,
    taco_order_key bigint not null,
    created_at timestamp not null
);
create table if not exists Ingredient_Ref (
    ingredient varchar(4) not null,
    taco bigint not null,
    taco_key bigint not null
);
create table if not exists Ingredient (
    id varchar(4) not null,
    name varchar(25) not null,
    type varchar(10) not null
);
alter table Taco
add foreign key (taco_order) references Taco_Order(id);
alter table Ingredient_Ref
add foreign key (ingredient) references Ingredient(id)