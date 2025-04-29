public enum Season {
    SPRING{
        @Override
        public void play() {
            System.out.println("SPRING play time");
        }
    },
    SUMMER{
        @Override
        public void play() {
            System.out.println("SUMMER play time");
        }
    },
    AUTUMN{
        @Override
        public void play() {
            System.out.println("AUTUMN play time");
        }
    },
    WINTER{
        @Override
        public void play() {
            System.out.println("WINTER play time");
        }
    };
    public abstract void play();
}
