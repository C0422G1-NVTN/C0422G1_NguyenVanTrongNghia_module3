package model;

import java.time.LocalDate;

public class Customer {
    String name;
    LocalDate birthDay;
    String address;
    String picture;

    public Customer() {
    }

    public Customer(String name, LocalDate birthDay, String address, String picture) {
        this.name = name;
        this.birthDay = birthDay;
        this.address = address;
        this.picture = picture;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(LocalDate birthDay) {
        this.birthDay = birthDay;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
