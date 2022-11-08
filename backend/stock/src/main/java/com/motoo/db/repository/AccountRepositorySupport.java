package com.motoo.db.repository;


import com.motoo.db.entity.Account;
import com.motoo.db.entity.QAccount;
import com.motoo.db.entity.Trading;
import com.querydsl.jpa.impl.JPAQuery;
import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class AccountRepositorySupport {

    private final JPAQueryFactory jpaQueryFactory;

    QAccount qAccount = QAccount.account;



    public List<Account> findAllAccountByUserId(Long userId){
        return jpaQueryFactory.select(qAccount).from(qAccount)
                .where(qAccount.user.userId.eq(userId)).orderBy(qAccount.seed.desc()).fetch();
    }

    public List<Account> findAllAccountByAccountIdUserId(Long accountId, Long userId){
        return jpaQueryFactory.select(qAccount).from(qAccount)
                .where(qAccount.accountId.eq(accountId))
                .where(qAccount.user.userId.eq(userId)).fetch();
    }


    public Account findAccountByAccountIdAndUserId(Long accountId, Long userId){
        return jpaQueryFactory.select(qAccount).from(qAccount)
                .where(qAccount.accountId.eq(accountId))
                .where(qAccount.user.userId.eq(userId)).fetchOne();
    }

    public Account findAccountByUserId(Long userId){
        return jpaQueryFactory.select(qAccount).from(qAccount)
                .where(qAccount.user.userId.eq(userId)).fetchOne();
    }


}
