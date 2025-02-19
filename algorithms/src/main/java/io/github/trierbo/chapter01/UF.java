package io.github.trierbo.chapter01;

public interface UF {
    void union(int p, int q);
    int find(int p);
    boolean connected(int p, int q);
    int count();
}
