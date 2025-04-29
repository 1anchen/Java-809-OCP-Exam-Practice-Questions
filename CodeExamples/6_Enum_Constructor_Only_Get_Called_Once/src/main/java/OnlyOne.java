public enum OnlyOne {
    ONCE(true);
    private OnlyOne(boolean once) {
        System.out.println("OnlyOne Constructor");
    }
    public static void main(String[] args) {
        OnlyOne onlyOne = OnlyOne.ONCE;
        OnlyOne secondOne = OnlyOne.ONCE;
    }
}
